import { render, fireEvent, screen } from "@testing-library/react"
import GoogleSignupButton from "@/components/atoms/google-signup-button"
import { useGoogleOauth2AuthorizeURL } from "@/hooks/api"

jest.mock("@/hooks/api")

describe("GoogleSignup", () => {
  let assignMock: jest.Mock
  let redirectedUrl = "https://example.com"

  beforeEach(() => {
    assignMock = jest.fn()
    Object.defineProperty(window, 'location', {
      writable: true,
      value: { assign: assignMock }
    });
    const useGoogleOauth2AuthorizeURLMock = useGoogleOauth2AuthorizeURL as jest.Mock
    useGoogleOauth2AuthorizeURLMock.mockReturnValue({ data: { authorizeUrl: redirectedUrl } })
  })

  it("visit google signup page on click", () => {
    render(<GoogleSignupButton />)
    fireEvent.click(screen.getByText("Sign up with Google"))
    expect(assignMock).toHaveBeenCalledWith(redirectedUrl)
  })
})

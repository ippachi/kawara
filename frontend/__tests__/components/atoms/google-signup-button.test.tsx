import { render } from "@testing-library/react"
import GoogleSignupButton from "@/components/atoms/google-signup-button"

describe("GoogleSignup", () => {
  it("successful", () => {
    render(<GoogleSignupButton />)
  })
})

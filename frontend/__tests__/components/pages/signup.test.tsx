import { render, screen } from "@testing-library/react"
import Signup from "@/components/pages/signup"
import Wrapper from "__tests_support__/wrapper"

describe('Signup', () => {
  it('successful', async () => {
    render(
      <Wrapper>
        <Signup />
      </Wrapper>
    )
    await screen.findByText("Sign up with Google")
  })
})

export { }

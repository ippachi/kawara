import { render } from "@testing-library/react"
import Signup from "@/components/pages/signup"

describe('Signup', () => {
  it('successful', () => {
    render(<Signup />)
  })
})

export {}

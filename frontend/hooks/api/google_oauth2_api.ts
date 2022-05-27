import { GoogleOauth2Api, Configuration } from "lib/openapi"
import { useQuery } from "react-query"

const config = new Configuration({
  basePath: process.env.NEXT_PUBLIC_API_BASE_PATH,
  credentials: "include"
})

const googleOauth2Api = new GoogleOauth2Api(config)

export function useGoogleOauth2AuthorizeURL() {
  return useQuery("GoogleOauth2AuthorizeURL", () => googleOauth2Api.getGoogleOauth2UathorizeURL())
}

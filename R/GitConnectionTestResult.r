# Looker API 3.0 Reference
# 
# ### Authorization  The Looker API uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page. Pass API3 credentials to the **/login** endpoint to obtain a temporary access_token. Include that access_token in the Authorization header of Looker API requests. For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization)  ### Client SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. Client SDKs for a variety of programming languages can be generated from the Looker API's Swagger JSON metadata to streamline use of the Looker API in your applications. A client SDK for Ruby is available as an example. For more information, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks)  ### Try It Out!  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  ### Versioning  Future releases of Looker will expand this API release-by-release to securely expose more and more of the core power of Looker to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning. Stable (non-beta) API endpoints should not receive breaking changes in future releases. For more information, see [Looker API Versioning](https://looker.com/docs/r/api/versioning) 
# 
# OpenAPI spec version: 3.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GitConnectionTestResult Class
#'
#' @field id 
#' @field status 
#' @field message 
#' @field can 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GitConnectionTestResult <- R6::R6Class(
  'GitConnectionTestResult',
  public = list(
    `id` = NULL,
    `status` = NULL,
    `message` = NULL,
    `can` = NULL,
    initialize = function(`id`, `status`, `message`, `can`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
    },
    toJSON = function() {
      GitConnectionTestResultObject <- list()
      if (!is.null(self$`id`)) {
        GitConnectionTestResultObject[['id']] <- self$`id`
      }
      if (!is.null(self$`status`)) {
        GitConnectionTestResultObject[['status']] <- self$`status`
      }
      if (!is.null(self$`message`)) {
        GitConnectionTestResultObject[['message']] <- self$`message`
      }
      if (!is.null(self$`can`)) {
        GitConnectionTestResultObject[['can']] <- self$`can`
      }

      GitConnectionTestResultObject
    },
    fromJSON = function(GitConnectionTestResultJson) {
      GitConnectionTestResultObject <- jsonlite::fromJSON(GitConnectionTestResultJson)
      if (!is.null(GitConnectionTestResultObject$`id`)) {
        self$`id` <- GitConnectionTestResultObject$`id`
      }
      if (!is.null(GitConnectionTestResultObject$`status`)) {
        self$`status` <- GitConnectionTestResultObject$`status`
      }
      if (!is.null(GitConnectionTestResultObject$`message`)) {
        self$`message` <- GitConnectionTestResultObject$`message`
      }
      if (!is.null(GitConnectionTestResultObject$`can`)) {
        self$`can` <- GitConnectionTestResultObject$`can`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "status": %s,
           "message": %s,
           "can": %s
        }',
        self$`id`,
        self$`status`,
        self$`message`,
        self$`can`
      )
    },
    fromJSONString = function(GitConnectionTestResultJson) {
      GitConnectionTestResultObject <- jsonlite::fromJSON(GitConnectionTestResultJson)
      self$`id` <- GitConnectionTestResultObject$`id`
      self$`status` <- GitConnectionTestResultObject$`status`
      self$`message` <- GitConnectionTestResultObject$`message`
      self$`can` <- GitConnectionTestResultObject$`can`
    }
  )
)
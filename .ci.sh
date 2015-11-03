BUILD_TYPE=mvn

# List of debian packages that will be installed in the target docker image
# prior to exection of any actions.
PACKAGES=()

# List of docker images that will be started and linked to the docker image on
# which CI task 'it' will be run. For all other actions, such as 'build' or
# 'test' this variable is ignored. Format of each string in this array
# is "${image_name}@${alias}", which gets translated
# into --link ${container_id}:${alias}, where container_id is id of newly
# started image ${image_name}.
#
# See here https://docs.docker.com/userguide/dockerlinks/ for more details.
IMAGES=()

###########################################################################
#
# Uncomment and change any of the functions below if you wish to override
# their default behavior. For example if integration tests (action "it")
# require starting any of the service such as database, web service etc
# then you will want to override functions before_it() and after_it().
# Later one should be then used to shut down services started in the
# before_it() function.
#
###########################################################################
# function prepare() {
# }

# # BEGIN BUILD LIFE CYCLE
# function before_build() {
# }

# function build() {
# }

# function after_build() {
# }
# # END BUILD LIFE CYCLE


# # BEGIN TEST LIFE CYCLE
# function before_test() {
# }

# function test() {
# }

# function after_test() {
# }
# # END TEST LIFE CYCLE


# # BEGIN IT LIFE CYCLE
# function before_it() {
# }

# function it() {
# }

# function after_it() {
# }
# # END IT LIFE CYCLE


# # BEGIN DEPLOY LIFE CYCLE
# function before_deploy() {
# }

# function deploy() {
# }

# function after_deploy() {
# }
# # END DEPLOY LIFE CYCLE


# # BEGIN RELEASE LIFE CYCLE
# function before_release() {
#     :
# }

# function release() {
# }

# function after_release() {
# }
# # END RELEASE LIFE CYCLE

# function finish() {
# }

# function if_success() {
#     echo "CI ACTION \"$ACTION\" SUCCEEDED"
#     exit 0
# }

# function if_fail() {
#     echo "CI ACTION \"$ACTION\" FAILED"
#     exit 1
# }

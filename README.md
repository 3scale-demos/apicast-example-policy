[![CircleCI](https://circleci.com/gh/3scale/apicast-example-policy.svg?style=svg)](https://circleci.com/gh/3scale/apicast-example-policy)

# APIcast Example Policy

This policy is an example how to make custom policies for APIcast.


## OpenShift

To install this on OpenShift you can use provided template:

```shell
oc new-app -f openshift.yml --param AMP_RELEASE=2.2.0
```

The template creates new ImageStream for images containing this policy.
Then it creates two BuildConfigs: one for building an image to apicast-policy ImageStream
and second one for creating new APIcast image copying just necessary code from that previous image.


# License

MIT

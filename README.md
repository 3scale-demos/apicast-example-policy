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

### Starting the builds

1. To start the first build run the following command:

   ```shell
   oc start-build apicast-example-policy --wait --follow
   ```

2. To start the second build run the following command:

   ```shell
   oc start-build apicast-custom-policies --wait --follow
   ```

If you didn't change the output image of the second build, you should see the APIcasts (staging and production) being redeployed.

Once the redeploys finish the new policy appearing in the list of policies to add.

# License

MIT

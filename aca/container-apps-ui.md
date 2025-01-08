1. First, look up "container apps" in the Azure porta.

![](images/1.png)

2. Click the blue **+ Create > Container App** button

![](images/2.png)

3. Fill in the information for your resource group, subscription, region, and container app name.

There's a toggle to choose between choosing code or choosing a container image. Choose the Container Image option.

![](images/3.png)

4. You may see this message in the **Container Tab**. If you do, take a look at step 5. If you don't, skip step 5.

![](images/4.png)

5. Within the ACR portal under youe registry, go to **Settings > Access Keys** and click the **Admin user** button.

![](images/5.png)

6. You'll see a toggle to choose a container image from ACR. Choose your registry along with the container image and tag.

![](images/6.png)

7. Under **Container resource allocation**, you can leave these default. It's all going to depend on the app you're deploying
and the Python web app is pretty small, so these defaults are fine.

![](images/7.png)

8. Under the **Ingress** tab is where you can specify whether or not you want an endpoint/URL for your app. Because it's
a web app, it makes sense to toggle this feature.

![](images/8.png)

9. There will be a few options including whether or not you want anyone to be able to reach the app and the target
port which is `5000`. You can toggle the **Accepting traffic from anywhere** as this is a public app.

![](images/10.png)

10. Once complete, click the blue ** Review + create** button.

![](images/9.png)
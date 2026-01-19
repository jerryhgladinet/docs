==========================================
FAQ
==========================================
Frequently Asked Questions about CentreStack

General
-------------------------

What is CentreStack?
++++++++++++++++++++++++++
CentreStack is Gladinet's enterprise solution, formerly known as Gladinet Cloud Enterprise. As more enterprises adopted the product and the company shifted focus toward enterprise solutions, the name "CentreStack" was chosen to better reflect its purpose.

CentreStack packages all file sync and share access infrastructure into a single solution that enterprises or managed service providers (MSPs) can deploy on-premises or in a DMZ. This provides full control, robust security, and optional native Active Directory integration. You can set any storage (including your own file servers) as the default cloud storage and make it available to your users or clients.

What can I do with CentreStack?
++++++++++++++++++++++++++++++++
CentreStack Server can be installed on-premises, close to your existing storage. It supports access via web browsers, mobile apps, desktop clients, and various devices. For example, if you have file server or SAN storage and want to add modern cloud-style file sync, sharing, and collaboration interfaces, CentreStack makes it possible.

What problem does CentreStack solve?
+++++++++++++++++++++++++++++++++++++
CentreStack addresses the growing concern of data leakage in business environments. While CIOs are focused on protecting data and ensuring regulatory compliance, end users are drawn to the simplicity of tools like Dropbox. CentreStack bridges this gap by offering a Dropbox-like experience that CIOs can control using their own secure storage.

    * Data remains within the company's secure infrastructure, compliant with regulations
    * End users continue enjoying the convenience of cloud access and collaboration tools

How can I get started?
+++++++++++++++++++++++
CentreStack offers a free download with a built-in 30-day trial. Simply click "`Try CentreStack Free <https://partner.centrestack.com/signup/>`_" at `centrestack.com <https://www.centrestack.com/>`_ or contact enterprise@gladinet.com to get started.

Technical
-------------------------

What is the best way to try CentreStack features?
+++++++++++++++++++++++++++++++++++++++++++++++++++ 
The quickest option is to log in to the partner portal and create a free Hosted Tenant trial on sync4share.com. This allows you to explore end-user features in 3-5 minutes.

However, for full evaluation, we recommend installing CentreStack directly using the 30-day free trial. Just prepare a clean Windows Server (2025, 2022, or 2019), download the 7MB installer, and within 20 minutes, CentreStack will be up and running.

We suggest trying both methods. Once you're familiar with the features, you can compare the self-hosted CentreStack against the Gladinet Cloud (on gladinet.com) and see how it fits within your infrastructure.

Can I brand CentreStack with my (company) name?
++++++++++++++++++++++++++++++++++++++++++++++++
Yes. CentreStack includes a white-labeled web portal and desktop client to support most branding needs. For full branding on iOS and Android apps, Gladinet also offers consulting services to help with publishing to the Apple App Store and Google Play Store.

What server operating systems can be used to install CentreStack?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
We recommend Windows Server 2025, 2022, or 2019.

Where can I deploy CentreStack?
++++++++++++++++++++++++++++++++
You can deploy CentreStack wherever Windows Server is supported (Windows Server 2025, 2022, or 2019). We recommend using a virtual machine environment to simplify upgrades and enable multi-node scaling. Most customers install CentreStack within their own data centers, often in VMware environments.

How scalable is CentreStack?
+++++++++++++++++++++++++++++
CentreStack supports scalable deployments with a farm of server nodes. Each node can support up to 1,000 concurrent users (or 5,000 named users) on a configuration similar to an Amazon EC2 medium instance. To support 10,000 users, for example, you can deploy a farm of 10 CentreStack nodes. Load balancing can be handled by CentreStack's built-in capabilities or an external load balancer.

Can I use my own storage with CentreStack?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Yes. CentreStack supports your own file server storage, SAN storage, private cloud storage, and public cloud storage.

Can I integrate Active Directory with CentreStack?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Yes. CentreStack integrates with your existing Active Directory infrastructure.

What are the differences between the two package options?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CentreStack offers two installation packages:

    * Single Tenant - Ideal for one company with a single Active Directory forest.
    * Service Provider - Designed for MSPs managing multiple customer environments.

Licensing
-------------------------

How is CentreStack licensed?
+++++++++++++++++++++++++++++
CentreStack is licensed by the number of users. Two models are available:

    * Monthly recurring subscription
    * One-time perpetual license

For details, contact enterprise@gladinet.com.

Security
-------------------------

What are CentreStack's security features?
+++++++++++++++++++++++++++++++++++++++++++++
    **1. Infrastructure Security**

        You install and host CentreStack yourself, giving you full control over data storage and infrastructure security. You determine where data resides and how it is protected.

    **2. Secure Data Transmission**

        All data is transferred over SSL/HTTPS connections, ensuring end-to-end encryption during transmission.

    **3. Data-at-Rest Encryption**

        You can enable AES-256 encryption on a per-team or per-tenant basis. Each team or tenant can manage its own encryption keys, securing data file by file.

---
title: "Kitwork Cluster – One Runtime, Many Roles"
subtitle: "Over the years of building software systems, I realized that the hardest part is not writing code. The hardest part is operating and maintaining the system."
slug: "kitwork-cluster-one-runtime-many"
date: "2026-06-10T03:41:58.583Z"
canonical_url: "https://huynhnhanquoc.substack.com/p/kitwork-cluster-one-runtime-many"
cover_image: "https://substack-post-media.s3.amazonaws.com/public/images/2500f2d5-a56c-41b3-9ddf-5b0502dfe953_1536x1024.png"
description: "Over the years of building software systems, I realized that the hardest part is not writing code. The hardest part is operating and maintaining the system."
---

## As a platform grows

As a platform grows, we naturally start adding more technologies:

- 

Redis for caching

- 

RabbitMQ for queues

- 

Kafka for events

- 

Consul for service discovery

- 

Nginx for gateways

Each technology solves a specific problem extremely well.

But when combined together, they often create a system that becomes increasingly difficult to understand, maintain, and operate.

At some point, I began asking myself:

**Can we build a system where every component is born from the same philosophy?**

That question became the foundation of Kitwork Cluster.

---

## One Runtime

In Kitwork, there is no such thing as:

- 

Gateway Server

- 

Cache Server

- 

Queue Server

- 

Worker Server

There is only one thing:

**Kitwork Runtime**

Every node in the cluster runs the same engine.

Every node is capable of:

- 

Execution

- 

Caching

- 

Proxying

- 

Workflow Processing

- 

Scheduling

- 

Event Handling

- 

Queue Processing

The only difference is role priority.

For example:

- 

Gateway Runtime

- 

Coordinator Runtime

- 

Worker Runtime

These are not different server types.

They are simply different responsibilities assigned to the same Runtime.

---

## Database Cluster – The Single Source of Truth

The entire cluster trusts one thing:

**Database Cluster**

It stores:

- 

Business Data

- 

Cluster State

- 

Tenant State

- 

Jobs

- 

Events

- 

Metadata

- 

Configuration

The database is not merely a storage engine.

It is the collective memory of the entire platform.

Any Runtime may fail.

Any Runtime may be replaced.

But the state of the system remains intact.

That is why every node ultimately revolves around the same source of truth.

---

## Gateway – The Guardian

In most modern architectures, a gateway is little more than an entry point.

It receives requests.

It forwards requests.

And usually does little else.

In Kitwork, the Gateway is the first line of defense.

Its primary responsibilities include:

- 

Routing

- 

Authentication

- 

Security

- 

Rate Limiting

- 

Load Balancing

However, the Gateway is not just a proxy.

If Coordinators become unavailable.

If Workers become overloaded.

If the entire cluster is under pressure.

The Gateway can step in and execute workloads itself.

It is the platform’s final survival layer.

---

## Coordinator – The Commander

The Coordinator is the brain of the cluster.

But it is not a proxy.

It is not a mandatory hop for every request.

It is not a bottleneck.

The Coordinator exists for one purpose:

**System Orchestration.**

Its responsibilities include:

- 

Leader Election

- 

Node Discovery

- 

Health Monitoring

- 

Tenant Assignment

- 

Job Scheduling

- 

Cache Coordination

- 

Cluster State Management

The Coordinator knows:

- 

Which nodes are alive

- 

Which nodes have failed

- 

Which nodes are overloaded

- 

Where tenants should reside

- 

Which workloads should be assigned next

It does not fight.

It commands.

But when necessary, it can step onto the battlefield itself.

---

## Worker – The Executor

Workers are where value is created.

This is where the actual work happens:

- 

API Processing

- 

Rendering

- 

Workflow Execution

- 

Job Processing

- 

AI Inference

- 

Business Logic

Under normal conditions, the majority of requests are handled by Workers.

They consume most of the resources.

They generate the final outcomes users interact with.

Workers are the workforce of the platform.

---

## No Node Is Completely Useless

This is perhaps the most important principle behind Kitwork.

In many systems today:

Node A fails → System degrades.

Node B fails → System degrades.

Node C fails → System degrades.

Kitwork takes a different approach.

Every Runtime can assume the responsibilities of lower-priority Runtimes.

For example:

Gateway can become:

- 

Gateway

- 

Coordinator

- 

Worker

Coordinator can become:

- 

Coordinator

- 

Worker

Worker can become:

- 

Worker

This means:

No node becomes completely useless simply because another node fails.

---

## Progressive Degradation

Rather than pursuing perfection,

Kitwork is designed for survival.

### Normal Operation

Gateway → Coordinator → Worker

### Worker Overloaded

Gateway → Coordinator Execute

### Worker Unavailable

Coordinator takes over execution

### Coordinator Overloaded

Gateway Execute

### Coordinator Unavailable

Gateway takes over

### Severe Cluster Failure

Gateway can still communicate directly with the Database Cluster

Performance may decrease.

But service availability remains.

The system continues to operate.

---

## Cluster Bus – The Nervous System

To coordinate Runtime communication, Kitwork introduces the Cluster Bus.

The Cluster Bus carries:

- 

Heartbeats

- 

Elections

- 

Job Dispatches

- 

Cache Invalidations

- 

Tenant Migrations

- 

System Events

- 

Configuration Synchronization

It acts as the nervous system connecting every Runtime into a unified organism.

Every Runtime can listen.

Every Runtime can respond.

Every Runtime can participate in the life of the cluster.

---

## The Ultimate Goal

Kitwork is not trying to become another framework.

Nor is it trying to replace every existing technology.

Its goal is to build a platform capable of:

- 

Self-Organization

- 

Self-Coordination

- 

Self-Healing

- 

Self-Adaptation

Where:

- 

Every node is a Runtime

- 

Every Runtime can execute

- 

Every Runtime can support others

- 

Every Runtime serves the same mission

And all of them trust a single source of truth:

**Database Cluster**

Because a strong system is not a system that never fails.

A strong system is one that continues to operate when failure inevitably occurs.

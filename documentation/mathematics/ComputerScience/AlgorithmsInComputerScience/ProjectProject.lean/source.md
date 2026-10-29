# Project Project — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35ac2e1624ed43d7db89959b5974fd5571fe1011` · SHA-256 `42c74f8716a1c6990d57408459acfdba2b7c87b05341a6e91342feb7d73971cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.System.Core

/-! # Projects, workspaces, and tenants -/

namespace Mathematics.System

/-- A project is a versioned semantic subsystem with explicit dependencies. -/
structure Project where
  id : ProjectId
  revision : Nat
  semanticDigest : Digest
  dependencies : List ProjectId
  deriving DecidableEq, Repr

/-- A workspace is a closed project collection, not a filesystem directory. -/
structure Workspace where
  id : WorkspaceId
  projects : List Project
  projectIdsUnique : (projects.map Project.id).Nodup

/-- Tenant state is isolated while foundational project identities may be shared. -/
structure Tenant where
  id : TenantId
  workspace : WorkspaceId
  enabledProjects : List ProjectId
  stateDigest : Digest
  deriving Repr

end Mathematics.System
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83abef8239f5ed49fb97cabdb73bbd818a7a4ee748f2d1c976d7cff847803ddc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Project/Variant42c74f8716a1c6990d57408459acfdba2b7c87b05341a6e91342feb7d73971cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

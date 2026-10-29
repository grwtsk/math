# Completion — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe5e32527dee4abf4ebc1e448d6c067e3fbe6df9` · SHA-256 `5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Asymptotics.Theta
import Mathlib.Analysis.Normed.Group.Completion

/-!
# Asymptotics in the completion of a normed space

In this file we prove lemmas relating `f = O(g)` etc
for composition of functions with coercion of a seminormed group to its completion.
-/

variable {α E F : Type*} [Norm E] [SeminormedAddCommGroup F]
  {f : α → E} {g : α → F} {l : Filter α}

local postfix:100 "̂" => UniformSpace.Completion

open UniformSpace.Completion

namespace Asymptotics

@[simp, norm_cast]
lemma isBigO_completion_left : (fun x ↦ g x : α → F̂) =O[l] f ↔ g =O[l] f := by
  simp only [isBigO_iff, norm_coe]

@[simp, norm_cast]
lemma isBigO_completion_right : f =O[l] (fun x ↦ g x : α → F̂) ↔ f =O[l] g := by
  simp only [isBigO_iff, norm_coe]

@[simp, norm_cast]
lemma isTheta_completion_left : (fun x ↦ g x : α → F̂) =Θ[l] f ↔ g =Θ[l] f :=
  and_congr isBigO_completion_left isBigO_completion_right

@[simp, norm_cast]
lemma isTheta_completion_right : f =Θ[l] (fun x ↦ g x : α → F̂) ↔ f =Θ[l] g :=
  and_congr isBigO_completion_right isBigO_completion_left

@[simp, norm_cast]
lemma isLittleO_completion_left : (fun x ↦ g x : α → F̂) =o[l] f ↔ g =o[l] f := by
  simp only [isLittleO_iff, norm_coe]

@[simp, norm_cast]
lemma isLittleO_completion_right : f =o[l] (fun x ↦ g x : α → F̂) ↔ f =o[l] g := by
  simp only [isLittleO_iff, norm_coe]

end Asymptotics
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=184ba09400cbb2313e36b4b4e59b9c322d6fea8a2314a413b69f1b71782a06a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Completion/Variant5df904f0c7149503af6439546bf019dda60b4b2b64bbf9cf4b8b60c2ada8f5ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

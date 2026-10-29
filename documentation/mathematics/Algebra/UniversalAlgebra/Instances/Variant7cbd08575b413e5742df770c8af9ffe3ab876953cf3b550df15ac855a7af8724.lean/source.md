# Complete source: GRWTSK.Algebra.UniversalAlgebra.Instances.Variant7cbd08575b413e5742df770c8af9ffe3ab876953cf3b550df15ac855a7af8724

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5de3f77dc0f45d6acc51af953ccf9dc0ddc5630c` · SHA-256 `6c1d79d0a950e4c74dde30d245e6fd9061126a2149305ae2c4c81d5a8877f6af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Group.Variant540767a4cdd6bd2ae421f3fed412147ee05aa465d2d9e9a0cd26b8a0c28b2c3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"540767a4cdd6bd2ae421f3fed412147ee05aa465d2d9e9a0cd26b8a0c28b2c3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Group.Variant540767a4cdd6bd2ae421f3fed412147ee05aa465d2d9e9a0cd26b8a0c28b2c3c","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"540767a4cdd6bd2ae421f3fed412147ee05aa465d2d9e9a0cd26b8a0c28b2c3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Order/Group/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Order.Monoid.OrderDual


namespace GRWTSK.Algebra.UniversalAlgebra.Group.Variant540767a4cdd6bd2ae421f3fed412147ee05aa465d2d9e9a0cd26b8a0c28b2c3c

#align_import algebra.order.group.instances from "leanprover-community/mathlib"@"55bbb8076236154a4f53939a62ad1e4fddbc14c8"

/-!
# Additional instances for ordered commutative groups.

-/


variable {α : Type*}

@[to_additive]
instance OrderDual.orderedCommGroup [OrderedCommGroup α] : OrderedCommGroup αᵒᵈ :=
  { OrderDual.orderedCommMonoid, instGroupOrderDual with }
#align order_dual.ordered_comm_group OrderDual.orderedCommGroup
#align order_dual.ordered_add_comm_group OrderDual.orderedAddCommGroup

@[to_additive]
instance OrderDual.linearOrderedCommGroup [LinearOrderedCommGroup α] : LinearOrderedCommGroup αᵒᵈ :=
  { OrderDual.orderedCommGroup, OrderDual.instLinearOrder α with }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d32798de316c231f0d3559520064013dd71507cca44edcc2a7f696a433707b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Instances/Variant7cbd08575b413e5742df770c8af9ffe3ab876953cf3b550df15ac855a7af8724.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

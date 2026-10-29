# Verification target: Int Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b313721b0babad9eef68f5e992d761d1ae6dab61",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant1482528c5ba2a5907a521de12115dd34335a2a03bc96617ae3b12df5cf252b56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b313721b0babad9eef68f5e992d761d1ae6dab61`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant1482528c5ba2a5907a521de12115dd34335a2a03bc96617ae3b12df5cf252b56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant1482528c5ba2a5907a521de12115dd34335a2a03bc96617ae3b12df5cf252b56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCommMonoid](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/declarations/instcommmonoid.md) | 32 | `declaration-track:c4a0dba6c950bdc2b79b8d654428f6dac4d4a3c7ac3ef5763760f7ae7322941a` |
| 2 | `instance` | [instAddCommGroup](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/declarations/instaddcommgroup.md) | 41 | `declaration-track:9c8c94bda45fcf1dc92bf11f96599ef5dd54f0a439adf0ee3f328088730d33a4` |
| 3 | `instance` | [instAddCommMonoid](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/declarations/instaddcommmonoid.md) | 66 | `declaration-track:3c5ac29b339b5daf57acc9a43c78cd271e32929fd5b1c59bbcdac64311c04728` |
| 4 | `instance` | [instAddMonoid](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/declarations/instaddmonoid.md) | 67 | `declaration-track:b543aa883d37a0a223306e7391b695d3732350341351bbcea84c0906d4392f68` |
| 5 | `instance` | [instMonoid](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/declarations/instmonoid.md) | 68 | `declaration-track:929954ee12c447db5de7b043222749032b596b27b88d759994fec645af4ed075` |
| 6 | `instance` | [instCommSemigroup](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/declarations/instcommsemigroup.md) | 69 | `declaration-track:624bfb013d3e961167799a82aea62e1d80b614d5263b136481a5fd86e5820bcb` |
| 7 | `instance` | [instSemigroup](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/declarations/instsemigroup.md) | 70 | `declaration-track:2d3915780cf015e0ab911535148534f96ff5a165d4116b6b9d2cbe8c96f099ae` |
| 8 | `instance` | [instAddGroup](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/declarations/instaddgroup.md) | 71 | `declaration-track:52f093d3e8e086a4304585e533c9b0c28c179b714600952aedaddd3fa2ac7a58` |
| 9 | `instance` | [instAddCommSemigroup](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/declarations/instaddcommsemigroup.md) | 72 | `declaration-track:99d93d757fcebaec59421f7c494b372e80c81835cee154fb5aa3e2f4382ca5f2` |
| 10 | `instance` | [instAddSemigroup](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/declarations/instaddsemigroup.md) | 73 | `declaration-track:11d282d18b5f73a67246a816f323503ef09c50947569f0016f0b5c9d87e342b8` |
| 11 | `lemma` | [zsmul_int_int](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/declarations/zsmul-int-int.md) | 78 | `result-track:c73a25f4b5f9cd31394779b461457b04719d13770196322da1e48296925a1398` |
| 12 | `lemma` | [zsmul_int_one](../../../../GroupTheoryAndGeneralizations/IntDefsNamespaced.lean/declarations/zsmul-int-one.md) | 80 | `result-track:b28fc65b61985b7cbee5ad1d2a14c6594eb887260983c09f733762334b799178` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5981a5080cb2d69e78fe5a434d682925ef706c540fe090dada32f1859d7b952 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant1482528c5ba2a5907a521de12115dd34335a2a03bc96617ae3b12df5cf252b56.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant1482528c5ba2a5907a521de12115dd34335a2a03bc96617ae3b12df5cf252b56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

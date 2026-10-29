# Verification target: Cardinal Free Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d654ee7e861116e6b00a41a2fb2f11c26e7f6eb4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Free/Variant9e038e741d1b7b895737258732cb75acdc049b4e19d12991a448a54b58a5a723.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d654ee7e861116e6b00a41a2fb2f11c26e7f6eb4`.

Source path: `GRWTSK/Algebra/Free/Variant9e038e741d1b7b895737258732cb75acdc049b4e19d12991a448a54b58a5a723.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Free/Variant9e038e741d1b7b895737258732cb75acdc049b4e19d12991a448a54b58a5a723.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Equiv.TransferInstance` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeAbelianGroup.Finsupp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Fintype` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup.Reduce` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeCommRing` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finsupp` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/instance.md) | 38 | `declaration-track:0c28541beca0e0f0b72572af208bae3519fbf8c1cb55768b66afcfb51dbad4a4` |
| 2 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/instance-source-edition-4.md) | 41 | `declaration-track:7534398621a6af72116aba4cca42e0b42ad01cc2e989071a3e26835388b0c1d1` |
| 3 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/instance-source-edition-5.md) | 45 | `declaration-track:8ffdbb8cf1586cdfd32fa337df6656b87f37ea079bf709dc39e6213a07ce5b92` |
| 4 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/instance-source-edition-8.md) | 48 | `declaration-track:af535ff7445feca67c11319685f738478aa183efd058229616c459106aece9b7` |
| 5 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/instance-source-edition-2.md) | 50 | `declaration-track:26f031a396cc47bf8549fbe0a88956524fb3771f6fce03c6714a51053ef6d50c` |
| 6 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/instance-source-edition-7.md) | 59 | `declaration-track:a1ef8ef351079aaf86732f62e7cbfaf184f6dc4731bb9b6612f7924cd62d0655` |
| 7 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/instance-source-edition-10.md) | 62 | `declaration-track:de7b7404849ea339b6bdd47ed54c7f467109ec63fada066ad5dc7815229d3806` |
| 8 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/instance-source-edition-9.md) | 64 | `declaration-track:d9c44705ea771437f409b34a736db5edb8e286ef845f3b5d7b262d4128a614c4` |
| 9 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/instance-source-edition-6.md) | 66 | `declaration-track:9296440de04fe14815472ceb08ccc2e472d79213d457b48f7a3f5b6823a9fcb6` |
| 10 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/instance-source-edition-3.md) | 68 | `declaration-track:307314015e92554d0846595b04771705e0a1f00d52a331d08c37af0c5837d1c4` |
| 11 | `theorem` | [mk_abelianization_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/mk-abelianization-le.md) | 76 | `result-track:a6c995e14c60a0413839cdf72961732308ac751cdd8adb5ff9d077585485e130` |
| 12 | `theorem` | [mk_freeMonoid](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/mk-freemonoid.md) | 80 | `result-track:fc26c7fa6c5a85d7ccaa00296cbaec8981d073a3d15e49bb8fcfb5eca91b06be` |
| 13 | `theorem` | [mk_freeGroup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/mk-freegroup.md) | 84 | `result-track:af7176591431777600843d247a1246681bab054bc3632e3e65b26a798bd9601a` |
| 14 | `theorem` | [mk_freeAbelianGroup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/mk-freeabeliangroup.md) | 100 | `result-track:5a5581877998b32b2d042639a43e6b510aa671bf41c81ba5db8e307d80c4033a` |
| 15 | `theorem` | [mk_freeRing](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/mk-freering.md) | 105 | `result-track:4f32ec594d21031a7cca4667bb700fec901ac18fa00ab62561e3beb6abfb3432` |
| 16 | `theorem` | [mk_freeCommRing](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/mk-freecommring.md) | 109 | `result-track:5d4416817fb689e371fd0d1d71e87e2ae1360fdc587c135883bc5fc353717141` |
| 17 | `instance` | [nonempty_commRing](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/nonempty-commring.md) | 119 | `declaration-track:fc9adc8bf7e9c73ca995e57125cc05229e951db6a96d61c5a528ff94ef034a3f` |
| 18 | `theorem` | [nonempty_commRing_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/nonempty-commring-iff.md) | 130 | `result-track:4f1d2ddfc1fb3a2d4637d8ea110f58549e1809c1cb58245af5001da184f51724` |
| 19 | `theorem` | [nonempty_ring_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/nonempty-ring-iff.md) | 134 | `result-track:3ad13ec1838f60d00d78ccc0b99ba71731ba3eb11b60826b7041e5a3b32bacac` |
| 20 | `theorem` | [nonempty_commSemiring_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/nonempty-commsemiring-iff.md) | 138 | `result-track:a0b2e2d0ad6a11db26094c5d3add6689f909c28c1de286cd6203e3788cb14714` |
| 21 | `theorem` | [nonempty_semiring_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalFreeNamespaced.lean/declarations/nonempty-semiring-iff.md) | 142 | `result-track:e149893ca06a607acb128b1268c90a8c6ef5c6f8410d5823e2cb6214ff7e2b65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a9654a51e7e8f573e7982f10cd783882b87ffd4efce8130e653f3d601e43e8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Free/Variant9e038e741d1b7b895737258732cb75acdc049b4e19d12991a448a54b58a5a723.lean","GRWTSK/_verification/specifications/Algebra/Free/Variant9e038e741d1b7b895737258732cb75acdc049b4e19d12991a448a54b58a5a723.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

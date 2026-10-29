# Verification target: Pigeonhole Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "099488c9c85a4ae7d225015711495e72a2d4ee60",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PigeonholeNamespacedPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PigeonholeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `099488c9c85a4ae7d225015711495e72a2d4ee60`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_pigeonhole](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PigeonholeNamespacedPublic.lean/declarations/infinite-pigeonhole.md) | 37 | `result-track:eccc237dec0463bda99858084720f1ae923ce26e6c135516e6068931af5746af` |
| 2 | `theorem` | [infinite_pigeonhole_card](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PigeonholeNamespacedPublic.lean/declarations/infinite-pigeonhole-card.md) | 52 | `result-track:4db9cbdb932906accc791d84b4d4d53421d8096a273ee012fbb17692fe2091c6` |
| 3 | `theorem` | [infinite_pigeonhole_set](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PigeonholeNamespacedPublic.lean/declarations/infinite-pigeonhole-set.md) | 59 | `result-track:668a1123a0c0a91888a0d294b568eab2fb270998bd533a413555650c9b3dcdb9` |
| 4 | `theorem` | [infinite_pigeonhole_card_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PigeonholeNamespacedPublic.lean/declarations/infinite-pigeonhole-card-lt.md) | 76 | `result-track:ee76570a4b41d64cea5e5af75bd1f6ce3c951cff2cfcc00e63daadae739e52d1` |
| 5 | `theorem` | [exists_infinite_fiber](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PigeonholeNamespacedPublic.lean/declarations/exists-infinite-fiber-source-edition-2.md) | 88 | `result-track:cbd75baab7159d26873c0a8ce411ec2802296f7473a7e919dc3e3a1c1ade2e0b` |
| 6 | `theorem` | [exists_infinite_fiber'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PigeonholeNamespacedPublic.lean/declarations/exists-infinite-fiber.md) | 98 | `result-track:adab0381996ef16c489ac8bb0e0833322ba18533d3f7ccf47c1b1055ecac2566` |
| 7 | `theorem` | [exists_uncountable_fiber](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PigeonholeNamespacedPublic.lean/declarations/exists-uncountable-fiber.md) | 105 | `result-track:4a9310f9b9936854c300682529bf01d38661a8df40f1cf246eef51f950f372f6` |
| 8 | `theorem` | [le_range_of_union_finset_eq_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PigeonholeNamespacedPublic.lean/declarations/le-range-of-union-finset-eq-univ.md) | 118 | `result-track:b8e0d3bc759e4a970aa48ad96c6a1aa2d56bd7c59800c2f77a7a0ce479e2ab31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27181652a7b76289d76ed2f20e6f78f0cc42813b0c2a57b7200b311b6745c2c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

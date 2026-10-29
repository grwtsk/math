# Verification target: Group Theory Is Free Group

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efb2d9b3922757f6ac311bfaea1c77e837eb4624",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant7fbc6f6b91b31444fcbeaa349c8ba81155aa6c6444e02ad6de061216cde6cd3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efb2d9b3922757f6ac311bfaea1c77e837eb4624`.

Source path: `GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant7fbc6f6b91b31444fcbeaa349c8ba81155aa6c6444e02ad6de061216cde6cd3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IsFreeGroup/Variant7fbc6f6b91b31444fcbeaa349c8ba81155aa6c6444e02ad6de061216cde6cd3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FreeGroup` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsFreeGroup](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/isfreegroup.md) | 43 | `declaration-track:d8994847264472b0e5da384ed32f370cbcd5361ffb4780ceb67776843129479b` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/instance.md) | 53 | `declaration-track:65c5b08228d5c6fa74527e3579e8df6f21c46a64603d195dc6ff1ce71baadaa1` |
| 3 | `def` | [MulEquiv](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/mulequiv.md) | 62 | `declaration-track:f2783dec411446f8d2e63310204654b17400b81c9c4a74260c7f526f0c23ce69` |
| 4 | `def` | [toFreeGroup](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/tofreegroup.md) | 66 | `declaration-track:01afa2522973c53e8f6b18a8aa2204992922e27f9c4098726b7cd5742a5e7572` |
| 5 | `def` | [of](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/of.md) | 75 | `declaration-track:07577557124a2f714b98154a2c7420d9a9a9daae2be90b9962db4ec1e5a61c8c` |
| 6 | `theorem` | [of_eq_freeGroup_of](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/of-eq-freegroup-of.md) | 80 | `result-track:b42f80e3ee98e2481d9a96bf24d57a7b5399b7c9d5f2ca7cfb18252e8f7fca8b` |
| 7 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/lift.md) | 88 | `declaration-track:a773f4d5f9b284d8e0018963191a7ed8f29123f7ecdfd51b8a391d3d9e80c444` |
| 8 | `theorem` | [lift'_eq_freeGroup_lift](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/lift-eq-freegroup-lift.md) | 101 | `result-track:c8654b95c32c278de9217b830140d03397dcace61f17d576f7e7939951e18328` |
| 9 | `theorem` | [lift_of](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/lift-of.md) | 106 | `result-track:d7112abbc7a6194719ed9cf0a3cc4fe90530394ca4cbbddedac780115e9b0ab8` |
| 10 | `theorem` | [lift_symm_apply](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/lift-symm-apply.md) | 111 | `result-track:d39855c68f57811a8471d8c5f057ec0cf90aa1bc7722e8f31a629cf9c8719b4b` |
| 11 | `theorem` | [ext_hom](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/ext-hom.md) | 117 | `result-track:9f2c30bb65d77f011dc1c8b08d6c84afc0eb114c118d9ef402bfa91036cf67e6` |
| 12 | `theorem` | [unique_lift](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/unique-lift.md) | 126 | `result-track:df28e9391fc6da6ff94ae3c8f9c854682da36113e9cf4439a51cad9f3cb4d54e` |
| 13 | `def` | [ofLift](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/oflift.md) | 132 | `declaration-track:4a376072b9dea098aca82a133c7878e88ce97e0b2cedd065ef5422582a1ba010` |
| 14 | `def` | [ofUniqueLift](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/ofuniquelift.md) | 153 | `declaration-track:33abe8bc0708f99122b1fe5452ed04a837224043de8d7dd9ff4df0f3699d1225` |
| 15 | `def` | [ofMulEquiv](../../../../GroupTheoryAndGeneralizations/GroupTheoryIsFreeGroup.lean/declarations/ofmulequiv.md) | 167 | `declaration-track:38ec65cd860b46edb12c6ee0efe957b984e190e687fba133f1fbc9fc8f3e85ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ff08a64a68f6e4c140c7ffb6f0387c4508a8237e5577a292975edf6ebf810cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant7fbc6f6b91b31444fcbeaa349c8ba81155aa6c6444e02ad6de061216cde6cd3c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/IsFreeGroup/Variant7fbc6f6b91b31444fcbeaa349c8ba81155aa6c6444e02ad6de061216cde6cd3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Semiconj Sup Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3747b04115c05c370dab5b89aa981579c805dc22",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant9e1cc9976228d8d8a5c3111fc9cd10f592699415de654ba3978f0294f210e984.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3747b04115c05c370dab5b89aa981579c805dc22`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant9e1cc9976228d8d8a5c3111fc9cd10f592699415de654ba3978f0294f210e984.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant9e1cc9976228d8d8a5c3111fc9cd10f592699415de654ba3978f0294f210e984.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsOrderRightAdjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/declarations/isorderrightadjoint.md) | 55 | `declaration-track:cbfa1f627737633fee7d61e5b9c96aec75a763f33ba7fa1c011391e8f41150c7` |
| 2 | `theorem` | [isOrderRightAdjoint_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/declarations/isorderrightadjoint-ssup.md) | 58 | `result-track:59d519f399d16446dd7d5e91c919f727bd00fe0027f6bd745154efd8e9c7f4ff` |
| 3 | `theorem` | [isOrderRightAdjoint_csSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/declarations/isorderrightadjoint-cssup.md) | 61 | `result-track:db95a4ba45e456e9db210b9b69bb0cd6fec241d71c60df462fe7505a7e3f5601` |
| 4 | `theorem` | [unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/declarations/unique.md) | 67 | `result-track:2e1233cdb2152e4153a76b98237a27a82e1e459d578b94df7fa80f84c0a561dd` |
| 5 | `theorem` | [right_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/declarations/right-mono.md) | 71 | `result-track:892a2b811e30eafbea947b267b39ce10549b16ab237680c5a8b1a4645d9c069f` |
| 6 | `theorem` | [orderIso_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/declarations/orderiso-comp.md) | 74 | `result-track:3ca101923221bf27acb9fe89b0c2e3434dda13f72eb08f5f3f98dff0f985abc9` |
| 7 | `theorem` | [comp_orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/declarations/comp-orderiso.md) | 78 | `result-track:ba21b6377f79edcfbca0797cfcf9527a7a77b9f0891bd77cc72a47f6a50c3676` |
| 8 | `theorem` | [Semiconj.symm_adjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/declarations/semiconj-symm-adjoint.md) | 95 | `result-track:bcf50aafd0297b6477aef1a24dbd8538068597cfcc8cdcc378f9c9aa81cdb9a0` |
| 9 | `theorem` | [semiconj_of_isLUB](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/declarations/semiconj-of-islub.md) | 104 | `result-track:aced3d4ac95e7f5335b618f8c942e4e5c170965f7b498543f326e855a369b1f4` |
| 10 | `theorem` | [sSup_div_semiconj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/declarations/ssup-div-semiconj.md) | 117 | `result-track:9a1d0d7a143ddcbde3951d6fe5ed4bac00ffa01253aad6a348294d217e912481` |
| 11 | `theorem` | [csSup_div_semiconj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedPublic.lean/declarations/cssup-div-semiconj.md) | 127 | `result-track:d1058d3baf0ed5cfec94fba317e9dce169572ba985203ba1d88af19f59583857` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=819fe4b5500295b95acbe7b77976b6d0c99741a24a13ff4e8f88a691abad211c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant9e1cc9976228d8d8a5c3111fc9cd10f592699415de654ba3978f0294f210e984.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variant9e1cc9976228d8d8a5c3111fc9cd10f592699415de654ba3978f0294f210e984.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

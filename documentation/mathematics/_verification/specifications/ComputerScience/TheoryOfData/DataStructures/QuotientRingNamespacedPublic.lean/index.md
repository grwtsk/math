# Verification target: Quotient Ring Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f26b0f23c28fba9ad90a4cd87b5c54fb7c1e37b6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuotientRing/Variant3f59d7292fdacd37ec5ed1cd78cf7b3c7f648b5307d82015054a7949b915af43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientRingNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientRingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f26b0f23c28fba9ad90a4cd87b5c54fb7c1e37b6`.

Source path: `GRWTSK/Algebra/QuotientRing/Variant3f59d7292fdacd37ec5ed1cd78cf7b3c7f648b5307d82015054a7949b915af43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuotientRing/Variant3f59d7292fdacd37ec5ed1cd78cf7b3c7f648b5307d82015054a7949b915af43.lean.json)

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
| 1 | `def` | [quotientSpanNatEquivZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientRingNamespacedPublic.lean/declarations/quotientspannatequivzmod.md) | 46 | `declaration-track:6becbdad0bf946b85e5a9de85be49d97cb79297b3b8103073fdbacab8082bd50` |
| 2 | `def` | [quotientSpanEquivZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientRingNamespacedPublic.lean/declarations/quotientspanequivzmod.md) | 52 | `declaration-track:15d949af75268532f1c3c927852e0c29859422f9af480a0d4b9c3bba6d289826` |
| 3 | `theorem` | [quotientSpanNatEquivZMod_comp_Quotient_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientRingNamespacedPublic.lean/declarations/quotientspannatequivzmod-comp-quotient-mk.md) | 56 | `result-track:2939761842db654850a8cd83db028b6c902d0007b1cd7ba50c926ca0d7768bed` |
| 4 | `theorem` | [quotientSpanNatEquivZMod_comp_castRingHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientRingNamespacedPublic.lean/declarations/quotientspannatequivzmod-comp-castringhom.md) | 61 | `result-track:5e2c0a7a5c6abe3c7364efe50212fad1045c2e9094590deb2a3e55b5f64155ab` |
| 5 | `theorem` | [quotientSpanEquivZMod_comp_Quotient_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientRingNamespacedPublic.lean/declarations/quotientspanequivzmod-comp-quotient-mk.md) | 66 | `result-track:42c58ef9388cccac572ff16196b24ef45666c9b4e362fb1daca4265e928d9596` |
| 6 | `theorem` | [quotientSpanEquivZMod_comp_castRingHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientRingNamespacedPublic.lean/declarations/quotientspanequivzmod-comp-castringhom.md) | 71 | `result-track:401e2fc4c04628811377d41720b04178bfce99abde52bf00ff1749581acf0712` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientRingNamespacedPublic.lean/declarations/instance.md) | 75 | `declaration-track:56b166da378f1ee775beb92150fe3fd5c502cf5ffa6c504d05823854ff58c4ac` |
| 8 | `def` | [ZMod.prodEquivPi](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientRingNamespacedPublic.lean/declarations/zmod-prodequivpi.md) | 86 | `declaration-track:62be5a47e9a76dcdf29ccb620542691ebd5f4d8e6e2329844de1758888a1a4b5` |
| 9 | `theorem` | [ZMod.prodEquivPi_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientRingNamespacedPublic.lean/declarations/zmod-prodequivpi-apply.md) | 97 | `result-track:bf80ed6dae887a4dd57508f76130c794d625a3732685ceaf14b096e5df2c1ca9` |
| 10 | `def` | [ZMod.equivPi](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientRingNamespacedPublic.lean/declarations/zmod-equivpi.md) | 104 | `declaration-track:999c9a00966ffb2740ab03ec6d1ef80af13a1ce0ed7ce3e31e79d900ab1804e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd62f08e03e4acb148b8d3c5a447f401e33128fb3090a7aa06207424f20a4aae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuotientRing/Variant3f59d7292fdacd37ec5ed1cd78cf7b3c7f648b5307d82015054a7949b915af43.lean","GRWTSK/_verification/specifications/Algebra/QuotientRing/Variant3f59d7292fdacd37ec5ed1cd78cf7b3c7f648b5307d82015054a7949b915af43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

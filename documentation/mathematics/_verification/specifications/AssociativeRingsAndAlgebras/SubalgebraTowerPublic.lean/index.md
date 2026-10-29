# Verification target: Subalgebra Tower Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cf628fd2076e61ee9fced09baffe691297efe51",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Tower/Variant59f514e6b7f054e5d0bb1b4d66de4ddcc964b630ef9d79d9a271d8c01662e738.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cf628fd2076e61ee9fced09baffe691297efe51`.

Source path: `GRWTSK/Algebra/Tower/Variant59f514e6b7f054e5d0bb1b4d66de4ddcc964b630ef9d79d9a271d8c01662e738.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Tower/Variant59f514e6b7f054e5d0bb1b4d66de4ddcc964b630ef9d79d9a271d8c01662e738.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lmul_algebraMap](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/lmul-algebramap.md) | 46 | `result-track:7570370f6ed51b960ccfcf0e2a152e4ae3e49d780c72848ec7bab91e469b3f86` |
| 2 | `instance` | [subalgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/subalgebra-source-edition-2.md) | 58 | `declaration-track:bc241b426ec88aaa468a1ee10c98f59707919cf4c6f6903270ff7c6e91e3dd89` |
| 3 | `instance` | [subalgebra'](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/subalgebra.md) | 63 | `declaration-track:66014b087fc96513a8751c3d0df2a95bd169825a05d33a99b1c5871825027072` |
| 4 | `def` | [restrictScalars](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/restrictscalars.md) | 83 | `declaration-track:72907f86fc79f59105a7f31663b2c29530a0428d609f4808daecb2cefad563f9` |
| 5 | `theorem` | [coe_restrictScalars](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/coe-restrictscalars.md) | 90 | `result-track:ba8c6670391dbe22bc2a520a6e2c9f33820ee443a09529736cdd75dc87d3f540` |
| 6 | `theorem` | [restrictScalars_top](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/restrictscalars-top.md) | 94 | `result-track:d5200c493bd59034b95e87e427d6d0e02f22f4c98bc0cca0ba28f70110f5559c` |
| 7 | `theorem` | [restrictScalars_toSubmodule](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/restrictscalars-tosubmodule.md) | 100 | `result-track:8caf1df34cf84f957c71c198c038044a8c67e3f8038d0d56860647d0ac37e375` |
| 8 | `theorem` | [mem_restrictScalars](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/mem-restrictscalars.md) | 105 | `result-track:243462bf4f1f7d879412ee928d302ceda33a27c3da08aede9f271dbeaaa67a6f` |
| 9 | `theorem` | [restrictScalars_injective](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/restrictscalars-injective.md) | 108 | `result-track:a93bb3299a545580059ba200fbe005691ca95e62cc64373ade90ff7f58f9474f` |
| 10 | `def` | [ofRestrictScalars](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/ofrestrictscalars.md) | 116 | `declaration-track:b0df0dbfc12969cac5fc507b64a0bb4d7c1266c2a4cac48f2a78a3d1d928278d` |
| 11 | `theorem` | [restrictScalars_one](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/restrictscalars-one.md) | 126 | `result-track:ee918b43ab4fe82f4fa5bfdcf862f1efa9c85c1e32c620bb403ebafaba5147f1` |
| 12 | `theorem` | [codisjoint_one_iff](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/codisjoint-one-iff.md) | 130 | `result-track:a066bc3497abf31e81b81e12c198d53d37f9a1ee53cb8304a54b8edeef14600a` |
| 13 | `theorem` | [disjoint_one_iff](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/disjoint-one-iff.md) | 135 | `result-track:8c1686e76fa583fd5401afcc742cec2a3fcaa1391cd555d585f9690282d020f4` |
| 14 | `lemma` | [range_isScalarTower_toAlgHom](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/range-isscalartower-toalghom.md) | 141 | `result-track:dd1387b50252bf3ce258419064012d78aa874e95581b0735de2122860320d3a6` |
| 15 | `theorem` | [adjoin_range_toAlgHom](../../../../AssociativeRingsAndAlgebras/SubalgebraTowerPublic.lean/declarations/adjoin-range-toalghom.md) | 157 | `result-track:974489c935dc64504ec4279a166605868012473a7aa5859c011c49bbabbc8bfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5417fd691f1e6b327597f7bbb6bbd65911e979bfd95d1c6d722b8b22b1a0840 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Tower/Variant59f514e6b7f054e5d0bb1b4d66de4ddcc964b630ef9d79d9a271d8c01662e738.lean","GRWTSK/_verification/specifications/Algebra/Tower/Variant59f514e6b7f054e5d0bb1b4d66de4ddcc964b630ef9d79d9a271d8c01662e738.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

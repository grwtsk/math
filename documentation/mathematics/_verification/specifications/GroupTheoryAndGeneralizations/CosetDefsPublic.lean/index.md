# Verification target: Coset Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08d06c5e363c72fc675c9127cff07851199ae84e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08d06c5e363c72fc675c9127cff07851199ae84e`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean.json)

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
| 1 | `def` | [leftRel](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/leftrel.md) | 66 | `declaration-track:77e8fe74de83ed3b4fe0054b758db4bd87a78d3453c1495d5e40988f9ccd128f` |
| 2 | `theorem` | [leftRel_apply](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/leftrel-apply.md) | 71 | `result-track:d3df1b2a0cde7e0a977f9a870a83f09903aa0d2298d9161abdc8e13729320836` |
| 3 | `theorem` | [leftRel_eq](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/leftrel-eq.md) | 80 | `result-track:a5d1c38b073fc78583fef89837ad54c088b2c5a3a564cfca26b9979abb4edbf5` |
| 4 | `instance` | [leftRelDecidable](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/leftreldecidable.md) | 86 | `declaration-track:ce96c7ec1cec3c5608990c82ebb661a6917a654ee53228625dea52d0417bb005` |
| 5 | `instance` | [instHasQuotientSubgroup](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/insthasquotientsubgroup.md) | 94 | `declaration-track:bf2622689d214055d9ecf0217a87c18431519f71468358837ba4949b03c9c3e9` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/instance-source-edition-3.md) | 98 | `declaration-track:c0a698c235474174cd4687cb81e18e2ce108bff27ecf9c88e253d937ce5af662` |
| 7 | `def` | [rightRel](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/rightrel.md) | 106 | `declaration-track:b9bdc80ac46473f946fc7ce794c642bb95887eb0244bda077efce3aca52936d9` |
| 8 | `theorem` | [rightRel_apply](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/rightrel-apply.md) | 111 | `result-track:8055dbf046c1c356325401b0a9ebc600e35ad9502b6cf67b6f8dee6ad12a7650` |
| 9 | `theorem` | [rightRel_eq](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/rightrel-eq.md) | 118 | `result-track:8e395b0c80f7d36d88e991e3e8d61a9bdf8d43261fc6ae72403d0df1b7665bb4` |
| 10 | `instance` | [rightRelDecidable](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/rightreldecidable.md) | 124 | `declaration-track:046d65155ed685c60ae1b9c1ff86e969cfa8bff0b867b4ee85859dd4b465c5a6` |
| 11 | `def` | [quotientRightRelEquivQuotientLeftRel](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/quotientrightrelequivquotientleftrel.md) | 130 | `declaration-track:62a7ad5b9b1fb7be2bc78c0c8b825a6e5967a2f25dbb2b2a042a39277c74f1ff` |
| 12 | `abbrev` | [mk](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/mk.md) | 161 | `declaration-track:495672c195b0d0b2a79dbf79eabf3af272befec5fe5e2221d87fc31b826a2c56` |
| 13 | `theorem` | [mk_surjective](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/mk-surjective.md) | 165 | `result-track:426d4d1a406c7d2e1858c775be6de6b8abc2525c2cab748918e6121c83d5962a` |
| 14 | `lemma` | [range_mk](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/range-mk.md) | 169 | `result-track:729fc070092e393734f1016c5b7b47a45b2aad5d25c53883568dfbd5fbfcfa7f` |
| 15 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/induction-on.md) | 172 | `result-track:4d019c48fc8c946c14acd9feff9139c754628335365cae634341286012751c97` |
| 16 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/instance.md) | 176 | `declaration-track:153a95287c7423032bd2e60f894cb1072973d37bb860c161d275930226ec557b` |
| 17 | `theorem` | [quotient_liftOn_mk](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/quotient-lifton-mk.md) | 182 | `result-track:fcf9b855f6a19336d07315fc6309c5814d888520f63c38094191021e84bc1b31` |
| 18 | `theorem` | [forall_mk](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/forall-mk.md) | 186 | `result-track:dd635a40fb8bebf4daf26a2b3fba32020a73116c4e8b62f3c0c70e0d4f7f989f` |
| 19 | `theorem` | [exists_mk](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/exists-mk.md) | 190 | `result-track:31d364ca566153bf7746a7e2e30e3d36cc14333f1b1d9c84d47b35d451b532bf` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/instance-source-edition-2.md) | 194 | `declaration-track:7b0c3010da492607eed2f7fadccdbbe2bef4b168f51e82859ad8d4e36a82601f` |
| 21 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/eq.md) | 198 | `result-track:8aef3114274e2fcc3b40502b9648b2dc01dc250ac3d0d9ed80a6116168b213d0` |
| 22 | `theorem` | [out_eq'](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/out-eq.md) | 204 | `result-track:1a91ae151bc3cdccd10ee7e17f7e688232eb26ca3952010295f4b8449eff5915` |
| 23 | `theorem` | [mk_out_eq_mul](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/mk-out-eq-mul.md) | 216 | `result-track:98f0caec8aa2cd4bf83ab7aa1b219a480cf455dc46f89192739140ec60963180` |
| 24 | `theorem` | [mk_mul_of_mem](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/mk-mul-of-mem.md) | 222 | `result-track:ac88487e90a18a1a04e859b9c5401707dd174830158718d6bdbb6eede9d64ce9` |
| 25 | `theorem` | [preimage_image_mk](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/preimage-image-mk.md) | 226 | `result-track:76ebb7508965c4ad24edfaa58ef6595424ee2899cce6d86b92d674aa325acd64` |
| 26 | `theorem` | [preimage_image_mk_eq_iUnion_image](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/preimage-image-mk-eq-iunion-image.md) | 236 | `result-track:dc225f261115a342a9071a7bb26c23f7fed5e7ad99fce810b87e0b7af686b6b1` |
| 27 | `theorem` | [preimage_image_mk_eq_mul](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/preimage-image-mk-eq-mul.md) | 242 | `result-track:c16d75829971c5664ab8734761da04b27bc34f52a7400aa2849fd38ac7489887` |
| 28 | `theorem` | [preimage_mk_one](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/preimage-mk-one.md) | 248 | `result-track:3751d8a61a1ec16b3a09a35965db8d0a6779eac820a325952f82ee34f1b40185` |
| 29 | `def` | [quotientEquivOfEq](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/quotientequivofeq.md) | 269 | `declaration-track:e8430bed445904e5a7f22a0aaf70c90794498ffdedd5f67ff49eb01f0ff8d04a` |
| 30 | `theorem` | [quotientEquivOfEq_mk](../../../../GroupTheoryAndGeneralizations/CosetDefsPublic.lean/declarations/quotientequivofeq-mk.md) | 275 | `result-track:bcf50a1d36e3fbfd449d16ca7328a1e3b42dcca7d9e5b864b8d999981ffbc503` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc4127898f5a33ac21ea56446370ed5e6e37cefea1b05cedbf481f063c64c6a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

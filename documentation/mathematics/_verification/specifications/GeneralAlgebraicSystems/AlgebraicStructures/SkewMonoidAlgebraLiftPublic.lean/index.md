# Verification target: Skew Monoid Algebra Lift Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daca25a8a58c141f59f93ccf2fcd815499c0da91",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lift/Variant3ba31168858bbe64b848269b619acd53964d717ad7a82d17b2c518e87de327b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daca25a8a58c141f59f93ccf2fcd815499c0da91`.

Source path: `GRWTSK/Algebra/GroupTheory/Lift/Variant3ba31168858bbe64b848269b619acd53964d717ad7a82d17b2c518e87de327b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lift/Variant3ba31168858bbe64b848269b619acd53964d717ad7a82d17b2c518e87de327b2.lean.json)

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
| 1 | `def` | [liftNCAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/liftncalghom.md) | 30 | `declaration-track:46bc1fc7e46fb8f6cfd20d5cad79de7ed194cdf7e7fda53f5653d2891e935d7b` |
| 2 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/lift.md) | 43 | `declaration-track:9b4d7391705817cdeef737e4ec0c373d8ef6104e1162730f542169defd979255` |
| 3 | `theorem` | [lift_apply'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/lift-apply.md) | 59 | `result-track:39c990b1349ebac5eac7bdb3a14f08b87bc1a47e303c3dd5a1518e0f48fa2186` |
| 4 | `theorem` | [lift_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/lift-apply-source-edition-2.md) | 62 | `result-track:61caae4a60ad036db562495a8190b6f1814ccc71e5171b0639a99edb74ddf492` |
| 5 | `theorem` | [lift_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/lift-def.md) | 65 | `result-track:1297348e982ea00333d01c0b0c632806aa8002353b8337934ff54d8de421fe55` |
| 6 | `theorem` | [lift_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/lift-symm-apply.md) | 69 | `result-track:59ed21cf90fd1ab295e02d8c62071e79f84d3c090108612f524b9fe89455f35b` |
| 7 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/lift-of.md) | 72 | `result-track:76f94c829c5e68b255e8a9317a95e29e87bae8a14fc3e294571bfac3bd2642ba` |
| 8 | `theorem` | [lift_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/lift-single.md) | 76 | `result-track:5c9f66687c07980988f24e557365377c4a07d388290c777dbac959ec82bf623c` |
| 9 | `theorem` | [lift_unique'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/lift-unique.md) | 79 | `result-track:16009e6b4abbe42e39b26b335ddb010dcb8cbf34eb3936ae1b3d0ac21c116181` |
| 10 | `theorem` | [lift_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/lift-unique-source-edition-2.md) | 85 | `result-track:931f7d8fb6f1f3a33a10a888558e46da2a7c3ccbf04082d33b6c957f48317f8e` |
| 11 | `def` | [mapDomainAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/mapdomainalghom.md) | 94 | `declaration-track:38e64106caa7b42271c55875407a1d8e50dd56b25ad31e9c8b2ad8c465e6dbdc` |
| 12 | `def` | [equivMapDomain](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/equivmapdomain.md) | 115 | `declaration-track:d237b9d00dac9af431fa9c66b502619a49fa431bb4f3ebffbd7333e5853fd5af` |
| 13 | `theorem` | [equivMapDomain_eq_mapDomain](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/equivmapdomain-eq-mapdomain.md) | 120 | `result-track:f9e037c7b9469510d78ff8793a698e690cfddd8b0fdc486e1d3e88d139b9eaba` |
| 14 | `theorem` | [equivMapDomain_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/equivmapdomain-trans.md) | 123 | `result-track:f1a374918fb3eac8b2e2671ff49fdc16de61c1dda285d5b06f8991d77c02a061` |
| 15 | `theorem` | [equivMapDomain_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/equivmapdomain-refl.md) | 129 | `result-track:47d6665cd13ee30920eb72156094d0d639f57ec6f8b0e0b45d5df7e60c46684e` |
| 16 | `theorem` | [equivMapDomain_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/equivmapdomain-single.md) | 133 | `result-track:4ee6569230dcd0ec32171145542992a26d9c67426ddc3354961ba1b5e71dedcd` |
| 17 | `def` | [domCongr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/domcongr.md) | 148 | `declaration-track:f08c235fc8c0ce2676a78eba05ea999b91903618ecbdf1ae5e39ca613c8165f2` |
| 18 | `def` | [domLCongr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/domlcongr.md) | 158 | `declaration-track:8c68dd76cbeac9834bd4bdac04242c3eff9f9183ba4856711e9838963f41fc31` |
| 19 | `def` | [domCongrAlg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/domcongralg.md) | 173 | `declaration-track:8505db31ee3af4a72105cc13a46cba0cfc03a1f91de8d13805e2f773957356ce` |
| 20 | `theorem` | [domCongrAlg_toAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/domcongralg-toalghom.md) | 181 | `result-track:be419e9ff88267fb8ab81a674a936dca8216e5ba62350f41e969a6cbd4103011` |
| 21 | `theorem` | [domCongrAlg_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/domcongralg-apply.md) | 185 | `result-track:9f5bc19435094201f008177e61ee2bdc077d248012a948bc1559e9e0748174c3` |
| 22 | `theorem` | [domCongr_support](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/domcongr-support.md) | 189 | `result-track:d0d31cd9128e5419a9bb1e50a7b2087ab1fdd2c82194a750199afb49150acf6e` |
| 23 | `theorem` | [domCongr_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/domcongr-single.md) | 193 | `result-track:599c9960383e6f5becc6e71e137098e9bdc0f8cc24f69519653ae0eddc457416` |
| 24 | `theorem` | [domCongr_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/domcongr-refl.md) | 197 | `result-track:ea2ab08557d2b08331aed11d67570bab6bae245d8d32fec96f415ceee2773170` |
| 25 | `theorem` | [domCongr_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/domcongr-symm.md) | 202 | `result-track:46d9cd71d4b70d1e75408a7b7573629dd2517718a2205be52de81a2078a9dd17` |
| 26 | `def` | [submoduleOfSmulMem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraLiftPublic.lean/declarations/submoduleofsmulmem.md) | 219 | `declaration-track:8724bc453dc72469dd14f7db73c2adaee90ef28520aad6078b588574251bc2c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95f5185175809d0525fe7528832fae89c9c0ed9a39261283b688b92f28546308 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lift/Variant3ba31168858bbe64b848269b619acd53964d717ad7a82d17b2c518e87de327b2.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Lift/Variant3ba31168858bbe64b848269b619acd53964d717ad7a82d17b2c518e87de327b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

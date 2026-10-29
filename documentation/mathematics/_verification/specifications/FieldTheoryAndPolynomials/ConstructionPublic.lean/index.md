# Verification target: Construction Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "253d03173a92cdb54f5f2577ee549c714ad4a1d9",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `253d03173a92cdb54f5f2577ee549c714ad4a1d9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean.json)

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
| 1 | `def` | [factor](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/factor.md) | 51 | `declaration-track:c37c6cea105f536f29bee3f2ab7b308feae68b36a3e1f336154344b9e040f252` |
| 2 | `theorem` | [irreducible_factor](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/irreducible-factor.md) | 54 | `result-track:97fbafdcd852f3246c7b7f64e9dde2245f163bd3745042d242bf3e1bf4eda2d0` |
| 3 | `theorem` | [fact_irreducible_factor](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/fact-irreducible-factor.md) | 61 | `result-track:5bc4e83f762319eaa8c0168b4759167021518146e654cfde384d986abd549d47` |
| 4 | `theorem` | [factor_dvd_of_not_isUnit](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/factor-dvd-of-not-isunit.md) | 66 | `result-track:c0a74ce5b0ca076f31a2ce431a56cbd8b6649836e3d2fc47d9fccbed56abac67` |
| 5 | `theorem` | [factor_dvd_of_degree_ne_zero](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/factor-dvd-of-degree-ne-zero.md) | 71 | `result-track:3dcbbe26ac780494dd074d3ebb051fb80aa4caec9eac7c2dd134812c5d27f44a` |
| 6 | `theorem` | [factor_dvd_of_natDegree_ne_zero](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/factor-dvd-of-natdegree-ne-zero.md) | 74 | `result-track:ee7ddb824b1887c4a73897d9f2a9e2b92a158c1da0fa95b1b29ccff819b4cd42` |
| 7 | `lemma` | [isCoprime_iff_aeval_ne_zero](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/iscoprime-iff-aeval-ne-zero.md) | 77 | `result-track:26093bbd419504c4a80ffb41b547ba76ad47d952bc52436d5e8301e60e2ec370` |
| 8 | `def` | [removeFactor](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/removefactor.md) | 89 | `declaration-track:312640df296bf8e678d357ec33eb416a153a6f01ae77361451ab535b1fcb94a4` |
| 9 | `theorem` | [X_sub_C_mul_removeFactor](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/x-sub-c-mul-removefactor.md) | 92 | `result-track:e753739769a2e615fbdae24f6b41109965b7c8a7badafb1d9aeacd5dbbe79475` |
| 10 | `theorem` | [natDegree_removeFactor](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/natdegree-removefactor-source-edition-2.md) | 99 | `result-track:5cf0baf353b55ed1d906ed7038195bca7356e59bcc81d417d424921cd4ef7dcd` |
| 11 | `theorem` | [natDegree_removeFactor'](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/natdegree-removefactor.md) | 102 | `result-track:2397230369a95376b72a89e97473cd40475ff41d347c1445d17a0c28d12c4d9f` |
| 12 | `def` | [SplittingFieldAuxAux](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/splittingfieldauxaux.md) | 112 | `declaration-track:1c5ac052c99e94d7d34134503767bcd647a8408e331a991e8cd3c87543774b8b` |
| 13 | `def` | [SplittingFieldAux](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/splittingfieldaux.md) | 125 | `declaration-track:83d9a59bbab606ca716825238aa07386e19d7027a95d50d71ec6618bcbaf404d` |
| 14 | `instance` | [SplittingFieldAux.field](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/splittingfieldaux-field.md) | 128 | `declaration-track:973b74f93c0f6df713626bddcd7593c0cd27291c1e32859eb94b6c2d009648bf` |
| 15 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/instance-source-edition-3.md) | 132 | `declaration-track:29e3cc606f4a29634340a41a60970d6061818e2a0ad1c460319489d39eb668be` |
| 16 | `instance` | [SplittingFieldAux.algebra](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/splittingfieldaux-algebra.md) | 135 | `declaration-track:5f3d59db16b73ad5fe538b4594be4be90f731ccea6716e2d83f1d0fdbc0e89d5` |
| 17 | `theorem` | [succ](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/succ.md) | 141 | `result-track:b30c682e31dd656092d26811df30c873fff53cc82399ad1dac58bc9e7d4bbbcd` |
| 18 | `instance` | [algebra'''](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/algebra-source-edition-2.md) | 145 | `declaration-track:55084202875b5fa6d7fcefe09201f83db90a1f53448c2c23657e2b316c7d0d89` |
| 19 | `instance` | [algebra'](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/algebra.md) | 149 | `declaration-track:28ca4bc9a4258f55afb8e93822c386334bc4adb93b8e058acd4feaeccfc29f74` |
| 20 | `instance` | [algebra''](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/algebra-source-edition-3.md) | 152 | `declaration-track:a0912fc846172daeede3e06f8b4eba2770562e2200d11d865e2b563b667b83a0` |
| 21 | `instance` | [scalar_tower'](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/scalar-tower.md) | 155 | `declaration-track:fd99c86959d5c3f3220a6d7e78609e5bacbb75a26916f50c584affdb055d223e` |
| 22 | `theorem` | [algebraMap_succ](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/algebramap-succ.md) | 159 | `result-track:38e79bea18292a71de0194347d2530ac89ce42c29ee627ab26e388bb21ade5be` |
| 23 | `theorem` | [splits](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/splits-source-edition-2.md) | 166 | `result-track:f433dce3243a52b4c28ec37cfc3a30e00fd0a19928dfcd8d939a9ba986bda774` |
| 24 | `theorem` | [adjoin_rootSet](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/adjoin-rootset-source-edition-2.md) | 181 | `result-track:957ddbf81a28c51333b827dfff0cce2683ddb032823c7f12322574fba085ec6c` |
| 25 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/instance-source-edition-7.md) | 206 | `declaration-track:ded68e9fee2f2ed46b34c36d47b01ae65b120a25346e06a008c50ddbf1cb70ba` |
| 26 | `def` | [SplittingField](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/splittingfield.md) | 213 | `declaration-track:f28c24b7ed5567c0ce4ca7e304653eb5de9003936cf78799f372e9fd89a186c4` |
| 27 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/instance-source-edition-6.md) | 225 | `declaration-track:a74b0c9caf65c5d3591d7d8d32dd1c311a1b24813333a3765a2a8f3c69d2690d` |
| 28 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/instance-source-edition-5.md) | 230 | `declaration-track:5c8c8fded4af40286ba834fe7c222295779537676c407b888978ea1332c055d7` |
| 29 | `def` | [algEquivSplittingFieldAux](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/algequivsplittingfieldaux.md) | 234 | `declaration-track:aa3233f61b2be8c80440d8e47b2c88e0c7ca7012ed075cc2c7a7c099a5206fbe` |
| 30 | `instance` | [instGroupWithZero](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/instgroupwithzero.md) | 237 | `declaration-track:8cf0d38ed7711eef195818b3674c82bdbbdd62ecc2a8a170337175ae437a4343` |
| 31 | `instance` | [instField](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/instfield.md) | 244 | `declaration-track:87c53b4d3c5a51aa773e641d2f857b98a1021469634a37e285e77defb32afc46` |
| 32 | `instance` | [instCharZero](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/instcharzero.md) | 259 | `declaration-track:0b42ebef4c558a13e4aa7ef21acc7b4519ec88c97f8acba4e76f7622a6bfc728` |
| 33 | `instance` | [instCharP](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/instcharp.md) | 262 | `declaration-track:03664f3a37737fd32686608f68ba704d5d286be192a1ec0bc779578fffcc7493` |
| 34 | `instance` | [instExpChar](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/instexpchar.md) | 265 | `declaration-track:02d6fea94faa9f35b1a5fa971b7dbcb9e31fbe2bb01e95ad2e0f8d70465eb582` |
| 35 | `instance` | [_root_.Polynomial.IsSplittingField.splittingField](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/root-polynomial-issplittingfield-splittingfield.md) | 268 | `declaration-track:758e448f3e785c5383d59ba6f93f80f884cd48535caa36011b43c1165959c15a` |
| 36 | `theorem` | [splits](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/splits.md) | 273 | `result-track:63d1bbd4583c18be889299bac407c897b222573468c463ef8c9894b31965e75f` |
| 37 | `def` | [lift](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/lift.md) | 279 | `declaration-track:9247496190bb91eb129f585850067ce5d8a5b2d84bd5de9d4582e839c4a1fdce` |
| 38 | `theorem` | [adjoin_rootSet](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/adjoin-rootset.md) | 282 | `result-track:3ee168d0e1823549695ae868b92ebed998cd46824ecb496c2a2aaadc55fe2e08` |
| 39 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/instance-source-edition-4.md) | 295 | `declaration-track:30eda99caff1e41a99072293f6a52acb94088f1551913ac145258c3e7b444bf2` |
| 40 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/instance.md) | 298 | `declaration-track:0cda6af3ebbc0e9cab6669944e4fcb27bee5e1956a710b4132799a63c5268a35` |
| 41 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/instance-source-edition-2.md) | 301 | `declaration-track:1156c0208123955a136d5a21282c3188f5c56e8417729510b55d44b0904f9b4f` |
| 42 | `def` | [algEquiv](../../../../FieldTheoryAndPolynomials/ConstructionPublic.lean/declarations/algequiv.md) | 305 | `declaration-track:fbc497bff39b631a4cebca20c047d89669c3bb492816f3b2ad52d27ca746284d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edc3482d70f0453ca6a68493cb250b4d3690b5468d0486336641646eacc62867 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Binary Matrix Homology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a2c775e4c33edd86d8cd0a132c05b5aed7e606e",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/BinaryMatrixHomology.lean/index.md) · [Full source](../../../../Combinatorics/BinaryMatrixHomology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a2c775e4c33edd86d8cd0a132c05b5aed7e606e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrixStream` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.DiscreteGeometry.BinaryRicciFlow` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BinaryMatrix](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/binarymatrix.md) | 29 | `declaration-track:89906a9d220842a48faa8854c78c75258c303a0ef4d2aea195aaae7482f70c9b` |
| 2 | `inductive` | [BinaryClosureKind](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/binaryclosurekind.md) | 36 | `declaration-track:a4ff4a30d7d237467ede614b42dcaf9290f0023f775883e7be4a62ee768f99bc` |
| 3 | `abbrev` | [Z2Chain](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/z2chain.md) | 44 | `declaration-track:cb65987b1e5e2f21d931005b94e66945c378bb1f5e67eaea14a09ac380bb8697` |
| 4 | `structure` | [BinaryCellComplex](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/binarycellcomplex.md) | 55 | `declaration-track:46151d8852d89d8e0d7d03cee92bbafdf5dbcbd541eef494fdc7f575a2cb4e76` |
| 5 | `instance` | [instFintypeC0](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/instfintypec0.md) | 78 | `declaration-track:427575f92ff47b870a78867699fb57802c065820e0cf462aaad428711c5657fb` |
| 6 | `instance` | [instFintypeC1](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/instfintypec1.md) | 82 | `declaration-track:790143973b8622c8917bffe848683b217db4d0cf64ed03b08f21c97be0b87c93` |
| 7 | `instance` | [instFintypeC2](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/instfintypec2.md) | 86 | `declaration-track:6d8f523daab09ac6bd7c3caacd927a337f0947dc0f433faa62afdfcad5bb804d` |
| 8 | `instance` | [instDecEqC0](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/instdeceqc0.md) | 90 | `declaration-track:e450db2f29a8b6015c82b25fa324b3fd28b67039418da77fe21516b478ddddb9` |
| 9 | `instance` | [instDecEqC1](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/instdeceqc1.md) | 94 | `declaration-track:17c1d96b9ffd2fa5a76f67390764b0c3e10c36b58b80b0707008ae188c12e278` |
| 10 | `instance` | [instDecEqC2](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/instdeceqc2.md) | 98 | `declaration-track:97b87c9883d51974da74dfdffdc5907b275f77651770b8b934982a204dd759c3` |
| 11 | `def` | [euler](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/euler-source-edition-2.md) | 103 | `declaration-track:2eb1fbe302ebf0a2b3a8a92ea777a6a5c3a3df67c4870e38f3b41291de82c026` |
| 12 | `def` | [IsOneCycle](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/isonecycle.md) | 112 | `declaration-track:780c4142ac0c75432eb334eaf154a5861e796bf172c391b5e4fe7758b2a7458c` |
| 13 | `def` | [IsOneBoundary](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/isoneboundary.md) | 117 | `declaration-track:11b0ee0a9e7d07331a245f8ec77c005c5760b02a35618adad4cd854819873b00` |
| 14 | `def` | [IsTwoCycle](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/istwocycle.md) | 122 | `declaration-track:855e51c6b15f3056d7664e20b38aa7d83a96a92cf21e230d3d4a63c251a51171` |
| 15 | `theorem` | [boundary_boundary_zero](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/boundary-boundary-zero.md) | 127 | `result-track:e7dba8d665586a6d87fd0d05d7bb2c477a20b93390d60e3f46085ef8bac854dc` |
| 16 | `structure` | [HomologyRanks](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/homologyranks.md) | 140 | `declaration-track:61f48b9497432f37b108c07669597eac28fcdbe1785405cc8c2b2260b3c41143` |
| 17 | `def` | [euler](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/euler-source-edition-3.md) | 148 | `declaration-track:456c5a94a87a6cce94bb4d0eda5f63a28e3955be95f299b449eb4cb05248787d` |
| 18 | `structure` | [HomologyRealization](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/homologyrealization.md) | 155 | `declaration-track:884ee63e4c0d32871053ea174827cbb30c4c750c3f151801ad1666bf1a2081e2` |
| 19 | `def` | [sphereHomologyRanks](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/spherehomologyranks.md) | 161 | `declaration-track:8c7984ed3573e9ace83cecf047cf83f0d22e15b195974365ef780f06e16ffe13` |
| 20 | `theorem` | [sphereHomologyRanks_euler](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/spherehomologyranks-euler.md) | 166 | `result-track:441aae40d1b950ad3b5deca7c136f570fa739434c3b499c65e65f5203a32e1dd` |
| 21 | `structure` | [SphereLikeClosure](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/spherelikeclosure.md) | 176 | `declaration-track:7693b429e2c0ba100dc369f9f95e5fed681d5ba397fd2039c7a3f6d643d83a72` |
| 22 | `theorem` | [sphereLike_euler_eq_two](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/spherelike-euler-eq-two.md) | 181 | `result-track:72f059c0007c22724d0371da79882a1561db4fdb8b100d04521d9fbcd1bbb119` |
| 23 | `structure` | [CellCountSignature](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/cellcountsignature.md) | 197 | `declaration-track:2d77ce55ce19fb07575b1c48317c1ebf0e150a6b1acecdd1b707a6d6999b4c78` |
| 24 | `def` | [euler](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/euler.md) | 205 | `declaration-track:0db746d35401f8194e83086183b8fbfee0bb71f26a1164412ce1d421a06ade36` |
| 25 | `def` | [twoFaceSphereCounts](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/twofacespherecounts.md) | 212 | `declaration-track:ee2f5d69d1974ce1775f9a261e347055ea23f07850e7926b62a69db9816f2c66` |
| 26 | `theorem` | [twoFaceSphereCounts_euler](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/twofacespherecounts-euler.md) | 217 | `result-track:68488f15831807ef940616b8422085fbda86547f0d2821030c2759a8c9cc476b` |
| 27 | `structure` | [HomologyPreservingRefinement](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/homologypreservingrefinement.md) | 228 | `declaration-track:6d7be60222b3e5e5f86c40875eea1fe75807563ac7da1a039dc23b38e3979645` |
| 28 | `theorem` | [refinement_preserves_euler](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/refinement-preserves-euler.md) | 237 | `result-track:65c63d54cc3e27bd42d0fc9043301f5e21aae91ed4dcd876e3485173faa28f0e` |
| 29 | `theorem` | [refinement_preserves_sphere_euler](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/refinement-preserves-sphere-euler.md) | 243 | `result-track:c63d671eb09a6e67137dbb44d69a15fc3388be099f2c606f7fe43766333928e1` |
| 30 | `structure` | [DirectionalSplittingField](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/directionalsplittingfield.md) | 259 | `declaration-track:830eee248237cb2fc24bb92cb4dbe0cc2abbcb85386f1cbff0f2624a45a33fad` |
| 31 | `structure` | [DefectIndexData](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/defectindexdata.md) | 271 | `declaration-track:c3afe0c580314c71de44ab85ca97e6d01baca36f0e004863c515127dd0d4b21b` |
| 32 | `instance` | [instFintypeDefect](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/instfintypedefect.md) | 280 | `declaration-track:d4c21f998c5d370ab3e21e4fe69fc23cb4c0a710d02622a025af7d015c946cc5` |
| 33 | `def` | [totalIndex](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/totalindex.md) | 286 | `declaration-track:91f75be029bc6236f247f2d68114b49294f2a5a2ab19ae1bfa790520cb123644` |
| 34 | `def` | [Defectless](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/defectless.md) | 293 | `declaration-track:b43b1f93b41a14016172eb1911340a15a9b869134695732e25f388eb904bf3c9` |
| 35 | `structure` | [DiscretePoincareHopfInput](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/discretepoincarehopfinput.md) | 308 | `declaration-track:836ded8b6e464742f58dffc251e134434e30a42c373b61f89ab2773724b2c203` |
| 36 | `theorem` | [total_defect_index_eq_euler](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/total-defect-index-eq-euler.md) | 314 | `result-track:55adbc54f27771b0e47f6e172e88025d5a47684fd180609e2c881684b85bfd36` |
| 37 | `theorem` | [no_defectless_directional_split_on_sphere](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/no-defectless-directional-split-on-sphere.md) | 326 | `result-track:1a2d2d9d7b4723c2ccecda24bd5a3ffad035a6731030cdda3bc7228e17b45f64` |
| 38 | `theorem` | [refined_defect_index_eq_coarse_euler](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/refined-defect-index-eq-coarse-euler.md) | 345 | `result-track:d6c26b4c15c36783bba2d7130d269a75e35cb6469c3a749f01ffa1f0682c681c` |
| 39 | `theorem` | [refined_no_defectless_directional_split_on_sphere](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/refined-no-defectless-directional-split-on-sphere.md) | 357 | `result-track:18a62aa323941527b5cc56240e5128876577aa76935d25f45af5ba140c0ee491` |
| 40 | `structure` | [BinaryCellFlow](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/binarycellflow.md) | 381 | `declaration-track:a4fba9ade8bf4e72eed1af5dbf9946233353d438bc26b0386475f0fd3d9487f6` |
| 41 | `structure` | [HomologyPreservingFlow](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/homologypreservingflow.md) | 390 | `declaration-track:25fffa0128b7a27e8bac72c4814f2d05fb2e9c580e4f96a77cf3f588b228f1a6` |
| 42 | `theorem` | [euler_preserved](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/euler-preserved.md) | 400 | `result-track:af149b1aa07eb814fb4200857bbd681200d69ec0e10d45998fe9b357187f9c04` |
| 43 | `structure` | [DirectionalBinaryCellFlow](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/directionalbinarycellflow.md) | 423 | `declaration-track:7ca3af4d017af2eb136411718c40cd61a81d7b3ab7103589b3fd01335fa3f2bb` |
| 44 | `def` | [all_directional_flows_are_homology_preserving](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/all-directional-flows-are-homology-preserving.md) | 445 | `declaration-track:6b046c39942e0b432f7ff614bedafc0b267f114d8f50f6f5f1468d962f888961` |
| 45 | `theorem` | [euler_preserved](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/euler-preserved-source-edition-2.md) | 454 | `result-track:d0f139e6fbdef5533f0f2f106e6a3ae0fe09aa1675d723506ac64c9f7068f610` |
| 46 | `theorem` | [total_defect_index_constant](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/total-defect-index-constant.md) | 467 | `result-track:41239f81462b8fb8e943a643f444dc54bced5755a2a09087f7ae4623cf3831de` |
| 47 | `theorem` | [total_defect_index_eq_two_of_sphere_like_slice](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/total-defect-index-eq-two-of-sphere-like-slice.md) | 487 | `result-track:cc0baf39d39806fed3c56be5e34c1337d1df6cef5f7cae5ea4e1dc4b93363e99` |
| 48 | `theorem` | [no_defectless_slice_of_sphere_like_slice](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/no-defectless-slice-of-sphere-like-slice.md) | 507 | `result-track:6804100ad43aa6c0e4a1cc161d46cbff95afb8cf0c4cb87370c274d92c66b2d3` |
| 49 | `structure` | [DirectionalFlowMatrixAdapter](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/directionalflowmatrixadapter.md) | 535 | `declaration-track:fe62ba4bed18d0e73ca5df49c85fa417aea00a85a9c42f8cc5590ec979a000ba` |
| 50 | `def` | [BinaryCellFlow.IsFiniteTime](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/binarycellflow-isfinitetime.md) | 548 | `declaration-track:17974aecf102327adbb49ba45cb1baaf642fad6b2bae68bb8904e5773c1005e6` |
| 51 | `def` | [BinaryCellFlow.IsNatTime](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/binarycellflow-isnattime.md) | 553 | `declaration-track:d73f50a5813a57f33d536f41845cac5a9d9021445c5e23228c31cc5f537676c0` |
| 52 | `def` | [DirectionalBinaryCellFlow.IsFiniteTime](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/directionalbinarycellflow-isfinitetime.md) | 557 | `declaration-track:6b31295efa29e8b1c891aaf2f9c1a115ed7d549fd0e50ddf0c16754b54a166df` |
| 53 | `def` | [DirectionalBinaryCellFlow.IsNatTime](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/directionalbinarycellflow-isnattime.md) | 561 | `declaration-track:32a00d91db7485417242512c66416b8096f1f47370eacee36c688fa03099a9c2` |
| 54 | `inductive` | [LocalFlowMode](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/localflowmode.md) | 571 | `declaration-track:805da4337dce60b8a3256478a465322522a3a301264aa725ee2876d89d53ef52` |
| 55 | `def` | [IsRelaxed](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/isrelaxed.md) | 580 | `declaration-track:22da7a8d8e7e4b788830d8c4206b2ea8e01a9f39822eb4ad7204007641837288` |
| 56 | `def` | [IsRadial](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/isradial.md) | 584 | `declaration-track:c94bdf98d6989e743b0475c8128c3576552c471a8ad852d778f0114ad2b42f33` |
| 57 | `def` | [IsDirectional](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/isdirectional.md) | 588 | `declaration-track:c9a449d82b87b1e308828fd2455409ae3c34bd9f090257b855abfe658b86756c` |
| 58 | `theorem` | [trichotomy](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/trichotomy.md) | 592 | `result-track:ffb406f1abea5fb5c30f605817edb602b1227a0c3fa9457d6797eecc9a845124` |
| 59 | `structure` | [MixedDirectionalSplittingField](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/mixeddirectionalsplittingfield.md) | 605 | `declaration-track:8f06e23baba8701b8314eabd6a92d86209746b55b1faf6baf852411e6afd2188` |
| 60 | `def` | [AllRelaxed](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/allrelaxed.md) | 612 | `declaration-track:d30ed1665ab45829e3e5b87d0daa1d9a376fd0bda92f902cc3d758220489d230` |
| 61 | `def` | [AllRadial](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/allradial.md) | 617 | `declaration-track:2898840c773e91ea28d363ba09d388cb5e8e0e9fe6bed6c4b707617dba00c980` |
| 62 | `def` | [HasDirectionalCell](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/hasdirectionalcell.md) | 622 | `declaration-track:40a7cee55dabae03deb170352e433b79909f0a8c77a8dbe6a67f0b4ca5b3a5d4` |
| 63 | `def` | [HasDirectionalResidual](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/hasdirectionalresidual.md) | 634 | `declaration-track:09ea91f701b07e3c940c1b117087bb815e5c4590526144c16b547c58f4d894f6` |
| 64 | `theorem` | [global_trichotomy](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/global-trichotomy.md) | 639 | `result-track:8e19b74a4c731789d2bcc07afabb023a4b1b535ed51ca3c2de14e7d5e178b0f1` |
| 65 | `theorem` | [directional_cell_forces_residual](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/directional-cell-forces-residual.md) | 650 | `result-track:efdfa3f300dc314d2b9a8c54704053776f6db52dd5aab8223c315d2ef2165b0d` |
| 66 | `structure` | [MixedDirectionalBinaryCellFlow](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/mixeddirectionalbinarycellflow.md) | 674 | `declaration-track:5a8ed7f9c821fe3344db899934a2c02a709a9a64c547f118155bfdbb8f582956` |
| 67 | `def` | [AllRelaxedAt](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/allrelaxedat.md) | 680 | `declaration-track:4ca7700455b0803fcc396529a23c5b4a842e39eeb856dededb1d9f771e91008c` |
| 68 | `def` | [AllRadialAt](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/allradialat.md) | 685 | `declaration-track:2b8537fb306447e66d7b6b13e8e59d5c2df7be9fd534f7f1d96bed4b6ff054e1` |
| 69 | `def` | [HasDirectionalResidualAt](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/hasdirectionalresidualat.md) | 690 | `declaration-track:c82abbdcdeadc3713f9ec762d98f5eba4b02585dbf46711128f616837775905b` |
| 70 | `theorem` | [local_global_trichotomy](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/local-global-trichotomy.md) | 695 | `result-track:16a357a66722cca8c24b5d66fc0016f54667fb141b46f10abceaa5a8c266e770` |
| 71 | `theorem` | [total_defect_index_constant](../../../../Combinatorics/BinaryMatrixHomology.lean/declarations/total-defect-index-constant-source-edition-2.md) | 702 | `result-track:af4e1460582a81ff46a283f976116101c1103b5c0b3a4eba30af278f8857fe83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb1bc82a8708c2f1d62ef7314004d0a1f5c0ec9cddf065324f0b95c075a02698 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

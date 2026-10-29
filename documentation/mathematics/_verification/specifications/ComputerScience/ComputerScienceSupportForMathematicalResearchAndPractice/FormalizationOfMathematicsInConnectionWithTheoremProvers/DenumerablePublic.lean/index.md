# Verification target: Denumerable Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "190c227132e24393a1a34fc1e293de8ce2b2c2de",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variante18e96ba8a0e268f166fa57fa90a10afae862c7f5456b21e20b3df870fdb0fa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `190c227132e24393a1a34fc1e293de8ce2b2c2de`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variante18e96ba8a0e268f166fa57fa90a10afae862c7f5456b21e20b3df870fdb0fa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variante18e96ba8a0e268f166fa57fa90a10afae862c7f5456b21e20b3df870fdb0fa7.lean.json)

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
| 1 | `class` | [Denumerable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/denumerable-source-edition-2.md) | 33 | `declaration-track:de56579c1b239204b9f44cd09081d80770a1f44a454a867230ea25481eb75b88` |
| 2 | `theorem` | [decode_isSome](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/decode-issome.md) | 47 | `result-track:942dd680cf99ab794b623c10587ff7be245f359a2b0e38c7fc83912b49fea4c9` |
| 3 | `def` | [ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/ofnat.md) | 51 | `declaration-track:165b264ac2c13628bd417ce5d24ad333a0fcd9ada7f787f1584972590f5b05c5` |
| 4 | `theorem` | [decode_eq_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/decode-eq-ofnat.md) | 55 | `result-track:7f55bd5da5c89c1e12df9c9009355bf787dfbf28cef2ce8169b5b13c68f710d7` |
| 5 | `theorem` | [ofNat_of_decode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/ofnat-of-decode.md) | 58 | `result-track:5ccf384831ae25b2640e7c05aa694d0edca0b776622bb105408cbc584dd40d7b` |
| 6 | `theorem` | [encode_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/encode-ofnat.md) | 62 | `result-track:722df8d1b048fe8551711cbf520fac06f9deb35fee1463d6480f54fb24f0ef25` |
| 7 | `theorem` | [ofNat_encode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/ofnat-encode.md) | 67 | `result-track:71852ef3fbf19ef3f2d4e56e1e5b4a2d02e108b551282e7668e4600b4486600e` |
| 8 | `def` | [eqv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/eqv.md) | 71 | `declaration-track:29eff0dea9097ebb10fc4779fd35479c09ac796c283a597b3074533b561bd795` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/instance.md) | 75 | `declaration-track:7722027b22b5c1b37895b347120016f0db9d79108a96440ee4ae4147cd4e1e27` |
| 10 | `def` | [mk'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/mk.md) | 80 | `declaration-track:c1b90f804b783044bfa74edb1cf46507c8f8c51a9b2b1450c6e8a32ad93d7587` |
| 11 | `def` | [ofEquiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/ofequiv.md) | 89 | `declaration-track:c40a4d373b09a99a01e6aefaf9d89687effcede4d2737138c49bb96239fe90c5` |
| 12 | `theorem` | [ofEquiv_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/ofequiv-ofnat.md) | 95 | `result-track:b4360cb1112731a827d10b39c942ece6cc6fb6a85fc11bd7b555f275ee8a053b` |
| 13 | `def` | [equiv₂](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/equiv.md) | 103 | `declaration-track:54c85de94ae73e517caef8c8bd8646b0178c9a61866b5b4643e34311f4fc7957` |
| 14 | `instance` | [nat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/nat.md) | 106 | `declaration-track:9e45f41e909bb195d225cffa6dbdb12d6bbdb102390057096bacadd4cdab8c50` |
| 15 | `theorem` | [ofNat_nat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/ofnat-nat.md) | 110 | `result-track:77e1c2803101d12c9ffb9afaa0ff485bf7dc1044427fbfa23f72d749b6430b0b` |
| 16 | `instance` | [option](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/option.md) | 114 | `declaration-track:4e1ad830d0b7a64db74274071213497054b8ee4f85a457f9a5c0d2bad21fc0d0` |
| 17 | `instance` | [sum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/sum.md) | 126 | `declaration-track:a507dc85acfff86bae8486f656906688aefbd21ec9e35955772dd8dbb5fefa3a` |
| 18 | `instance` | [sigma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/sigma.md) | 138 | `declaration-track:09012daca73bd44398d4eaab014c2da49a5a71fda4a91829277a71ddca119ac5` |
| 19 | `theorem` | [sigma_ofNat_val](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/sigma-ofnat-val.md) | 142 | `result-track:fe27d25767494a103c11bc33f616bcd8f753a5575b87a2918f8492a3f9f7a3f4` |
| 20 | `instance` | [prod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/prod.md) | 149 | `declaration-track:d6d0a3a45eb8e0196f08ec4ae3c0d9b28f789112b7277b0c4a89330a892c3f57` |
| 21 | `theorem` | [prod_ofNat_val](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/prod-ofnat-val.md) | 152 | `result-track:43def961f2b7ae433291bd37556fad810ff5e8dca136d31a1af83b2d8dcffb8a` |
| 22 | `theorem` | [prod_nat_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/prod-nat-ofnat.md) | 156 | `result-track:e3c43972156f64c5b07cadd10c61fcfe2e8b206e465a53c39c6a41e8a58e632f` |
| 23 | `instance` | [int](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/int.md) | 158 | `declaration-track:15465f74ccf77ec3249d8b318018a69e5fbac0ea4c7fc7e63b4dca26e102b928` |
| 24 | `instance` | [pnat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/pnat.md) | 161 | `declaration-track:6204a10229fa934fe65ef2da9362921a0e40d8691476dda3e91e680567ee6245` |
| 25 | `instance` | [ulift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/ulift.md) | 165 | `declaration-track:cce7be92b8972e737931ecbb25feabc5a8f9dd6266b0fde520713038700319a6` |
| 26 | `instance` | [plift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/plift.md) | 169 | `declaration-track:91387aab3d16eaf1d2288c6c2a78dd0af35dd65dc3928a7f6b518491e7f6874e` |
| 27 | `def` | [pair](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/pair.md) | 173 | `declaration-track:8e7c53dcb1b39ed7c21cf7d7cc78d274512b508193895d26eabdfbec7e34a8fa` |
| 28 | `theorem` | [exists_succ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/exists-succ.md) | 190 | `result-track:652e5cca9e6083904b23e5b29b3699138299e2f3c9ad88f37f422de829dcc428` |
| 29 | `def` | [succ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/succ.md) | 205 | `declaration-track:6552b87de32d3b1fac72e67cfbfec9929d21e74e270959b8a5035201adbc08ff` |
| 30 | `theorem` | [succ_le_of_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/succ-le-of-lt.md) | 209 | `result-track:72527c9fbd52835c898e786aab91cb3d0bc84ac52ad0655a63551be43ff5ebb8` |
| 31 | `theorem` | [le_succ_of_forall_lt_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/le-succ-of-forall-lt-le.md) | 215 | `result-track:cec8ef7c4f07657b575e3f48169856b7e1806271e2cc425582c1f6380d33565f` |
| 32 | `theorem` | [lt_succ_self](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/lt-succ-self.md) | 222 | `result-track:91549f1700dfdd983c8575fd2bdfe44a49c3ff831a12012749ebefc3933122cb` |
| 33 | `theorem` | [lt_succ_iff_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/lt-succ-iff-le.md) | 227 | `result-track:cd3e38a7c2d4da3ff82c31424cbdc495d9b526ca37b6b3cc600ca579d843135d` |
| 34 | `def` | [ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/ofnat-source-edition-2.md) | 232 | `declaration-track:9d1b7b57bcd044a869e8c6eafcc663bee06933dc47619ee114c59426c6c80181` |
| 35 | `theorem` | [ofNat_surjective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/ofnat-surjective.md) | 236 | `result-track:7cad51248ea95e506c97b1ae6e6a95e1d7857c412dbb0398a0ee2484c23ffadd` |
| 36 | `theorem` | [ofNat_range](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/ofnat-range.md) | 256 | `result-track:6a34b0fd53c52d6180cb50afa02cfd7b174497f6a804e456d6222752d8d7f6dc` |
| 37 | `theorem` | [coe_comp_ofNat_range](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/coe-comp-ofnat-range.md) | 260 | `result-track:c1a3d49a206b3e5511ce3096979d4ca1e642d7e55574069b857aaa186ca6317e` |
| 38 | `def` | [toFunAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/tofunaux.md) | 263 | `declaration-track:ecac560c415b050bf99ce981536d91ffd616e41e4d73ee8084491a146ff52077` |
| 39 | `theorem` | [toFunAux_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/tofunaux-eq.md) | 266 | `result-track:5de267fc97f6888de7ae520e74dfb5a8351913c96a62aed16072ddba835d70d1` |
| 40 | `theorem` | [right_inverse_aux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/right-inverse-aux.md) | 271 | `result-track:4c9f30de260acb64d4b44842e561cefc3bfbd82a8e5b162e7868d113ba3a8d89` |
| 41 | `def` | [denumerable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/denumerable.md) | 297 | `declaration-track:c5ac583bef502e44eeac75e6368e6c00c01bf33f7dd740aefd768120607aad22` |
| 42 | `def` | [ofEncodableOfInfinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/ofencodableofinfinite.md) | 312 | `declaration-track:09a385beed41e628cab842042f2c53b1bd368893560b1373d2b91c36193345bc` |
| 43 | `theorem` | [nonempty_denumerable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/nonempty-denumerable.md) | 322 | `result-track:ddd9015351cbf7dbe7f5563805e4478a4da27da44a1746a430d6aabb465944cf` |
| 44 | `theorem` | [nonempty_denumerable_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/nonempty-denumerable-iff.md) | 325 | `result-track:4c85086c21e7dc73725a1d8105c8ac6267e2339cf1397b3b6404a00d97f7a763` |
| 45 | `instance` | [nonempty_equiv_of_countable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DenumerablePublic.lean/declarations/nonempty-equiv-of-countable.md) | 329 | `declaration-track:e4d3439c5dcc4a2da287ef89a3ccb52f44f94d5aaf56dce7876346599797dfc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94aabcdba006af8c772755dc46218e138a842e6af06e72b0183785a4823ad051 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variante18e96ba8a0e268f166fa57fa90a10afae862c7f5456b21e20b3df870fdb0fa7.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Denumerable/Variante18e96ba8a0e268f166fa57fa90a10afae862c7f5456b21e20b3df870fdb0fa7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

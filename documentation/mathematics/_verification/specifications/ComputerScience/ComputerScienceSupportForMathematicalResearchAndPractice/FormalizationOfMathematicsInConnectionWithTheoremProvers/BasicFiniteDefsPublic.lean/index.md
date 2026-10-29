# Verification target: Basic Finite Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "454510b5bb72f4d9e517e4485bf7c27cea1d857f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant1e94b38b09b4fc3acaff3c22f60ee46f960dd45ccc5392ca9993abbbb1ef8cad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `454510b5bb72f4d9e517e4485bf7c27cea1d857f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant1e94b38b09b4fc3acaff3c22f60ee46f960dd45ccc5392ca9993abbbb1ef8cad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant1e94b38b09b4fc3acaff3c22f60ee46f960dd45ccc5392ca9993abbbb1ef8cad.lean.json)

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
| 1 | `class` | [inductive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/inductive.md) | 101 | `declaration-track:bfca86ff9ce77d1f90ed3bbb5fc13f67b442e4df82d6e6b089786dbee5a8df28` |
| 2 | `theorem` | [finite_iff_exists_equiv_fin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/finite-iff-exists-equiv-fin.md) | 104 | `result-track:512eebaa8a6d39ed030f91fa78af50abf7f02d699ee72601f0e446304dee48bc` |
| 3 | `theorem` | [Finite.exists_equiv_fin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/finite-exists-equiv-fin.md) | 107 | `result-track:f5c17521ea3801c066fd2600e1d914cdf530bf2b6b82af63066bf0ea8acc6a4a` |
| 4 | `theorem` | [Finite.of_equiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/finite-of-equiv.md) | 110 | `result-track:5343782c440b378fd83d2d963a2965b48c36de68eee38eb52d064f99b33da656` |
| 5 | `theorem` | [Equiv.finite_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/equiv-finite-iff.md) | 113 | `result-track:cb3971a1a25cf3910a9ab85be00714da96ada77669978469fc4194d06d43941d` |
| 6 | `theorem` | [Function.Bijective.finite_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/function-bijective-finite-iff.md) | 116 | `result-track:57a9c0b28915bbc858e99a2b5fa965aeec8ae2c9e19fe02a9d68929d270ff2e2` |
| 7 | `theorem` | [Finite.ofBijective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/finite-ofbijective.md) | 119 | `result-track:640f444a59ad9f05921ab0c7474174deb2a1a252df2451df1d62b2266b9b9ff0` |
| 8 | `theorem` | [Finite.nonempty_decidableEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/finite-nonempty-decidableeq.md) | 123 | `result-track:faaeac57d79cbf6c075574230a8cf1d9068a3edad1e5e70122a5b264b2b6fd45` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/instance-source-edition-3.md) | 126 | `declaration-track:a3000225e43e91a3d7b86eb91355934e9b049f7f946c62b7b258673132188838` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/instance-source-edition-2.md) | 129 | `declaration-track:8b104e3a736a6ac9167a2c0ec24ae56b4aabbb46c46ae48264856296920c1f1b` |
| 11 | `class` | [Infinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/infinite-source-edition-2.md) | 134 | `declaration-track:bd8c4b7518642ea26cb5520ecb216ad900e9349b83c580a33ace23fbd2ad6e15` |
| 12 | `theorem` | [not_finite_iff_infinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/not-finite-iff-infinite.md) | 139 | `result-track:ef3b9a818ae6de6f4ed6cf32d9e495a45489932ecf93cf82ad4370b0404e9cab` |
| 13 | `theorem` | [not_infinite_iff_finite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/not-infinite-iff-finite.md) | 143 | `result-track:aea5e8983f94c7e07043cc266698eeba9e3453d2a8b0d2d5f2b7834f6cae31ca` |
| 14 | `theorem` | [Equiv.infinite_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/equiv-infinite-iff.md) | 146 | `result-track:f29b52ca89340674920610103117dc7a25e7c1f9670a66d286942f21f0f3d2eb` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/instance-source-edition-4.md) | 149 | `declaration-track:c63534fe8e27cce773b9c7ea7d36745b1f47a8b424117ce1bb5ddc5a4f909d4c` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/instance.md) | 152 | `declaration-track:021d510e7ca0086e4c500b729da31f1aac1ac571b2dd1d4624f77a1ee9f3bdf2` |
| 17 | `theorem` | [finite_or_infinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/finite-or-infinite-source-edition-2.md) | 155 | `result-track:dc505a85562fa8f02ed5fd5934db9936c32c9ce99999e0aa4b6533364b617e6d` |
| 18 | `theorem` | [not_finite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/not-finite.md) | 159 | `result-track:05c5a66d0c645dd3753f7f0240cfae1db7364c1d07f1b0f828d7e0474770993b` |
| 19 | `theorem` | [Finite.false](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/finite-false.md) | 162 | `result-track:d6eed91474a7c78fdf1519e15027d89cde2c2d38dd599702c97fe37cbc4b594f` |
| 20 | `theorem` | [Infinite.false](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/infinite-false.md) | 165 | `result-track:3cc68075d2dbe19ac491384068c39c7eb44a88220feee033e0b8d102d46367b4` |
| 21 | `instance` | [Bool.instFinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/bool-instfinite.md) | 170 | `declaration-track:997e292a3d2d4a69ec9dc4978f9170dab552263d82eba3f66fcfc68cfbf434de` |
| 22 | `instance` | [Prop.instFinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/prop-instfinite.md) | 171 | `declaration-track:ce1fa809f3de1ec99ddf84a3ef278736702d5e5c056aa9565857b554f5df6ae2` |
| 23 | `def` | [Finite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/finite.md) | 185 | `declaration-track:c418aa67b019e21e1580d1cd45b30ae26a7bb02a2512b7016d9f6d906ebd15f4` |
| 24 | `theorem` | [finite_coe_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/finite-coe-iff.md) | 192 | `result-track:43ba6ba7275c4ee291a5d3ac835e65379d2111c14a9f9c4f2b1afae64828eaab` |
| 25 | `theorem` | [toFinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/tofinite.md) | 195 | `result-track:b7c38ffb08af775e5ddfb62cab18782a25abfeb6ad0b6fc0d30c629504a35bc1` |
| 26 | `theorem` | [Finite.to_subtype](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/finite-to-subtype.md) | 200 | `result-track:d8606aaf3521e27707b17e44de71f746d8f965454e9bea68bad1a124422eb1a7` |
| 27 | `def` | [Infinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/infinite.md) | 205 | `declaration-track:498352e6ca3f8ed5ce944dce1044d00eccf018ca0fb411d78a4c594e2b39e42a` |
| 28 | `theorem` | [not_finite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/not-finite-source-edition-2.md) | 209 | `result-track:e193d637045408dc2487d80a17686a159a67a14c6a74c334517c86a778dfb30e` |
| 29 | `theorem` | [not_infinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/not-infinite.md) | 212 | `result-track:10dc5ed8445021d81dc3c9eb7bb19e00073cc4486cf743b5669d903d64042476` |
| 30 | `lemma` | [Infinite.not_finite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/infinite-not-finite.md) | 217 | `result-track:cfc14b55239a6cab6f41e09ce709fac847f24375a4179ef22cb9e377eba807b7` |
| 31 | `theorem` | [finite_or_infinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/finite-or-infinite.md) | 222 | `result-track:59bca0e371b4aa5b8385a332c694ae2f4ecc4351a0a92d1b2e3b5296ea30e3e5` |
| 32 | `theorem` | [infinite_or_finite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/infinite-or-finite.md) | 225 | `result-track:7d4ba723ba7ca8d1ee00e683b66d0fa7a3e62fb4427bd6b0ca699eb2f3e661a9` |
| 33 | `theorem` | [Equiv.set_finite_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/equiv-set-finite-iff.md) | 230 | `result-track:054b1cadb6562ca4bddb4313f24a885b04a06f3baaf6e2554ccbcf69846b62cd` |
| 34 | `theorem` | [infinite_coe_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsPublic.lean/declarations/infinite-coe-iff.md) | 239 | `result-track:99311614774666363a4855a6d0bfce5f3ffdd9bd736500556677a22784ad50f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4502c8d9026d376542da5312dbfa1e182e699abb07a35046fc13466711b62002 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant1e94b38b09b4fc3acaff3c22f60ee46f960dd45ccc5392ca9993abbbb1ef8cad.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant1e94b38b09b4fc3acaff3c22f60ee46f960dd45ccc5392ca9993abbbb1ef8cad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

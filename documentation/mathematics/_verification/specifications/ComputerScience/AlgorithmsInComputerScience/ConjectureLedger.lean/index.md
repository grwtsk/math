# Verification target: Conjecture Ledger

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab8645f014820ae2c7ae62703a80a46a4626c7fe",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab8645f014820ae2c7ae62703a80a46a4626c7fe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.Bit0.M546172676574732f42617369632e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TargetStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/targetstatus.md) | 18 | `declaration-track:86f6cc6b48a7973b7bcc9df51b2ec9100f2ecc60b2a1c8a1e329fa5ee0603f37` |
| 2 | `inductive` | [TargetFamily](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/targetfamily.md) | 26 | `declaration-track:da89090991126139dad807f1249d51001e71ac72057c24b624a39d475098ea62` |
| 3 | `inductive` | [ResidueDisposition](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/residuedisposition.md) | 40 | `declaration-track:945df14b90e86532c4f6f846509a72ae676671246e54400bbc86ee15a85190a7` |
| 4 | `structure` | [OpenTargetRecord](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/opentargetrecord.md) | 47 | `declaration-track:d8778c59ff80945841cad2d159f6aa96e1517813df1b1fc227ccfff5ef361313` |
| 5 | `def` | [targetClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/targetclaim.md) | 63 | `declaration-track:10afb7354d45de3a084fa531d7d5946a19f9d03c036bac9a2a5d72391ab5ebc3` |
| 6 | `def` | [residueKindFor](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/residuekindfor.md) | 66 | `declaration-track:18a773f441fc9501b6415cd5a6ab06c1d9a682eb417a7231665a1f73d6cf6a91` |
| 7 | `def` | [targetResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/targetresidue.md) | 72 | `declaration-track:96d8c8fdf881221fbc2588e63e1029923526384225d95d19c312e58e13f99ad6` |
| 8 | `def` | [targetChecked](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/targetchecked.md) | 79 | `declaration-track:b7ff3835db2ceeca8b61cabc94bc8332991266bb02dfb157c357aeabb6a2c2d4` |
| 9 | `theorem` | [targetChecked_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/targetchecked-hasresidue.md) | 83 | `result-track:10c9b0d0280ff0e674f676b19d9b99dfc778637881f8a64828ef18d38ea037ba` |
| 10 | `theorem` | [targetResidue_target](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/targetresidue-target.md) | 87 | `result-track:2ea9ac6439a2f4867fc006ce403d9d16d15076fc23456587c806f3da2796f780` |
| 11 | `def` | [sourceClayMillennium](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/sourceclaymillennium.md) | 91 | `declaration-track:e696bcecb1751169d652ed74e4f68b8a5ba35ef0792a4f1a95ae1648f1d7ac69` |
| 12 | `def` | [sourceHilbertEight](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/sourcehilberteight.md) | 94 | `declaration-track:9afcaf150ba8680d426e905f1550a41b42202e10d047bc3ac04eef1dfcf75569` |
| 13 | `def` | [sourceErdosGemini](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/sourceerdosgemini.md) | 97 | `declaration-track:b65c81d7637191446f08dba79c6d52d0b40a1365dcb5f2fd5a56cd6d92cba171` |
| 14 | `def` | [sourceErdosUnitDistanceNews](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/sourceerdosunitdistancenews.md) | 100 | `declaration-track:e0086611d5e155e5308e6dbb4667a4ee7cb5a9f745cf6e4521e158016076598d` |
| 15 | `def` | [sourceLandauProblems](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/sourcelandauproblems.md) | 103 | `declaration-track:8d486112cf3a511fd5838a35b1f164ce03fc44ea18c9b63324cd959e5ff9f96d` |
| 16 | `def` | [mk](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/mk.md) | 106 | `declaration-track:77708901134cbcb673825363d8410aff3b84ff29121fb91e75297534bd2c0b6e` |
| 17 | `def` | [clearsByOpen](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/clearsbyopen.md) | 130 | `declaration-track:771bddf4bdc6cb13646bd8f931034ba4883cdb72c42569e5fdbbf86266a69229` |
| 18 | `def` | [standardForbiddenOverclaims](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/standardforbiddenoverclaims.md) | 133 | `declaration-track:2500da673c1188fb707c667dd65a450afabc41bc4d0deabb4854fc06f67d7e4f` |
| 19 | `def` | [millenniumTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/millenniumtargets.md) | 139 | `declaration-track:d132a6cf7df03756cb6e2d141eaa99864b12ea9545f3607dacdf81f636142218` |
| 20 | `def` | [hilbertTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/hilberttargets.md) | 200 | `declaration-track:fde30fdc9110714563ebdc8647ef5f3b464209104633fb81de346702e070e553` |
| 21 | `def` | [erdosTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/erdostargets.md) | 267 | `declaration-track:baa077e1d0cb8fff64b3a35085ae44c2ab88fcc0acf4825c004f4d5a3f65e053` |
| 22 | `def` | [numberTheoryTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/numbertheorytargets.md) | 350 | `declaration-track:a523ea2c55c248c0d00c5cbf7ed6b55f5ca4132cc880f2c2f3e339309560a2b6` |
| 23 | `def` | [lFunctionTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/lfunctiontargets.md) | 457 | `declaration-track:650e9769b374c310fdf267510afa0b5c666fd18ba8e988feda22ee20dc2d827c` |
| 24 | `def` | [complexityTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/complexitytargets.md) | 508 | `declaration-track:bad40ca35ee9c49d902f900e64d45f56fa632ffd30a148eea4840ee062cc4226` |
| 25 | `def` | [pdeTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/pdetargets.md) | 583 | `declaration-track:6b99b2c899e62acbe19fa63215a9cd000dcab75a101f6365ccd2a820cbe8a499` |
| 26 | `def` | [geometryTopologyTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/geometrytopologytargets.md) | 650 | `declaration-track:627895be128e953abe9ad2320ac9745f1734d7ca175ee3ee821bc36216b9d278` |
| 27 | `def` | [algebraicGeometryTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/algebraicgeometrytargets.md) | 717 | `declaration-track:455761858979bbb87a4f6a616e13c1daa7f2d6775ce93ddee76a915c608f4b19` |
| 28 | `def` | [combinatoricsTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/combinatoricstargets.md) | 768 | `declaration-track:5f8b4229551e470109633771ac91c3e943472de0f9c48828dcdf97f43dd311a8` |
| 29 | `def` | [physicsTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/physicstargets.md) | 851 | `declaration-track:8883ccfeb52f08a49af29947631caa919721614d9f172823686b71dde6b103f1` |
| 30 | `def` | [allTargets](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/alltargets.md) | 894 | `declaration-track:89810add84dc2758cd1682b8dde86a9afb28be13b2f37ffe95430eea2b454165` |
| 31 | `theorem` | [millenniumTargets_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/millenniumtargets-count.md) | 907 | `result-track:e687118bc7ac6f6a1ff881e98e077339c5f0af8325dbcdd35d54e44411d3dcc3` |
| 32 | `theorem` | [hilbertTargets_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/hilberttargets-count.md) | 911 | `result-track:3c04a8a1313c98e9033c8e712ae9f3b4dfdebebeffbe72d8d51eb507930d69ab` |
| 33 | `theorem` | [erdosTargets_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/erdostargets-count.md) | 915 | `result-track:6794c0b8bc61bf135ff0c940a24a39a9f45634b3be85dd30009e2b1279f49e66` |
| 34 | `theorem` | [numberTheoryTargets_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/numbertheorytargets-count.md) | 919 | `result-track:cf7568c38a20e8c374bc472729e23ec7a7873a199ca649f954dfdc23e8a9323d` |
| 35 | `theorem` | [lFunctionTargets_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/lfunctiontargets-count.md) | 923 | `result-track:65b2c79bb355b6ebfa959dbbd1d3386462bd19ff1f0ad7e4b84a326f54301c57` |
| 36 | `theorem` | [complexityTargets_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/complexitytargets-count.md) | 927 | `result-track:1126fa183b4cf938459b859dccdd4aeb9d0cd0d456ebd06f9428427eab0a0a9a` |
| 37 | `theorem` | [pdeTargets_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/pdetargets-count.md) | 931 | `result-track:d59f797b33ebe5bafba06f1a932f49d1fb9ef93f736540cf4587033b351da782` |
| 38 | `theorem` | [geometryTopologyTargets_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/geometrytopologytargets-count.md) | 935 | `result-track:c5130a86eae2a5a1ee8d054b13ecc0bf97b21d8d7469214c0369c221774f5898` |
| 39 | `theorem` | [algebraicGeometryTargets_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/algebraicgeometrytargets-count.md) | 939 | `result-track:a6972e9a8ab534471aec6ff299f5c1cc418b39b2d9de9cfd35c5d5e1bbff514e` |
| 40 | `theorem` | [combinatoricsTargets_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/combinatoricstargets-count.md) | 943 | `result-track:99a65568f1d6467f52ae5c7ebd030ec526297d5e22c9a312eed785814bd57f02` |
| 41 | `theorem` | [physicsTargets_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/physicstargets-count.md) | 947 | `result-track:df9c95e0ea4f4ec695d9771dd234f7e879aca18f4926f1ed5f151514db79d806` |
| 42 | `theorem` | [allTargets_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/alltargets-count.md) | 951 | `result-track:5b1b10e8e07a38c78ac51bdc763a97c2654fdd90672ae1396a68959a1b4b2ca6` |
| 43 | `def` | [allTargetResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/alltargetresidues.md) | 955 | `declaration-track:b1aae3b099f2a270b42c4147d58f1684c648f70f6666c7b16f183c458747dcb1` |
| 44 | `theorem` | [allTargetResidues_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/alltargetresidues-count.md) | 958 | `result-track:39cd1ddbb5bdc252888a1a9698a645431f617a82aaf274b825f5ac91d7e4a96c` |
| 45 | `theorem` | [allTargetResidues_target](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/alltargetresidues-target.md) | 962 | `result-track:1f3b63a426c3ca60d5fffd2042d8d36bf3e4a2fc23bf5914a594c7fac992217c` |
| 46 | `theorem` | [allTargets_checked_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/alltargets-checked-hasresidue.md) | 970 | `result-track:b6c3ebf11890830336c9fcbc6f69efedb8efaf6d2598b37bc64e2f2b77c7f0f1` |
| 47 | `theorem` | [clay_millennium_target_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/clay-millennium-target-count.md) | 975 | `result-track:e32184187de2704bde18c8af5cc138389536973a19f3b44384f1461824bcb496` |
| 48 | `theorem` | [poincare_is_solved_reference_only](../../../../../ComputerScience/AlgorithmsInComputerScience/ConjectureLedger.lean/declarations/poincare-is-solved-reference-only.md) | 980 | `result-track:25f307a1a71ca659ae19258ceaa5c572401d5ebd9f2e9e39866a359c8e03dc25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ff539a1a847f6b2063a64a7698303dbc9b8462a5616eb35d30fd51ebfe0e736 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

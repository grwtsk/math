# Verification target: Decl Needs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50ebe6549e1e693c5dbd37181e9ff4ed58b00464",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50ebe6549e1e693c5dbd37181e9ff4ed58b00464`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.Main` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.ToDecl` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Compiler.NoncomputableAttr` — import line 13; external provider; requires a separately pinned dependency.
- `ImportGraph.Shake.EnvExtension` — import line 14; external provider; requires a separately pinned dependency.
- `ImportGraph.Lean.Syntax` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isDeclMeta'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/isdeclmeta.md) | 67 | `declaration-track:6f17a81b675a5e18f874204967a5ecd8aabdcb4261bf055db4dd0658d49b1924` |
| 2 | `def` | [Lean.Environment.getDepConstName?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/lean-environment-getdepconstname.md) | 85 | `declaration-track:433e2e7bb4986a08e0b06c214f08226ca55cc66c344ed7a7e0e58292c0c25591` |
| 3 | `structure` | [ImportNeedsKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/importneedskind.md) | 99 | `declaration-track:2ad14a0d50c1c8101e508740fb5dc878fa8c2cf95c2d53a7e8625bb478148cd3` |
| 4 | `def` | [pubNoMeta](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/pubnometa.md) | 116 | `declaration-track:8e31d2c0664b35b9c0c1aff2ef63f789fe415004e36c85b644935345f60c1fbc` |
| 5 | `def` | [privNoMeta](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/privnometa.md) | 118 | `declaration-track:59cbcb78d4209124f2d0a086248f5029983fb8615bae4d60becef9a454d42244` |
| 6 | `def` | [privOfPrivNoMeta](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/privofprivnometa.md) | 120 | `declaration-track:0a75661bfc88a8cb46cb8306080b184b9801e9953deccf883460939ed1727300` |
| 7 | `def` | [metaPub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/metapub.md) | 122 | `declaration-track:f183349af29a9c116daaf6c9eebdf7359f32ad9f575307640e6729eeee43d2df` |
| 8 | `def` | [metaPriv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/metapriv.md) | 124 | `declaration-track:dae2c9a752c80d94489fd59b15e118836e0c628be965c01faafee8dfde369c74` |
| 9 | `def` | [metaPrivOfPriv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/metaprivofpriv.md) | 126 | `declaration-track:a0a81e59b38b34537fc683c3b7d32e8bbc64c043112f77ee5b37993ee49bfbdb` |
| 10 | `def` | [pubAllowMeta](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/puballowmeta.md) | 128 | `declaration-track:7be34cb5c842d19ab438a102ebdab397ca683756c1b50db823a6d0405bf222ed` |
| 11 | `def` | [privAllowMeta](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/privallowmeta.md) | 130 | `declaration-track:2e11b8bd8e4c6a0e674d881421eba22eae9e55f39100100975f69488d215b618` |
| 12 | `def` | [privOfPrivAllowMeta](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/privofprivallowmeta.md) | 132 | `declaration-track:54a7f1c84bfc5abd81961bc171dd8177b6145fe6a44a4bf3d756c8b53d37248d` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/instance-source-edition-3.md) | 137 | `declaration-track:c8264cb3cb114fd54d75c1d5dc2a253d0738e18cca3c1f5d95eb3412aa0e1a72` |
| 14 | `def` | [NeedsKind.toImportNeedsKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/needskind-toimportneedskind.md) | 148 | `declaration-track:895af20c283945ef7ba5d178fb6a90b58e84e8b7b6de6c3c39d1008c860453a4` |
| 15 | `structure` | [ImportNeeds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/importneeds.md) | 154 | `declaration-track:9f84220eb2a1692fdfdf9ea67f319fe1a3d0990de2d27a36842790b67786f0bc` |
| 16 | `def` | [empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/empty.md) | 171 | `declaration-track:83d8f8d87ec768aa2fc64b30259faab50bc5b27231652a2caeea5ecf04c78dd5` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/instance-source-edition-2.md) | 174 | `declaration-track:a0dc91cab9d5e4929a89e34f6e95808482fbed44d9e2d0e6eba67bbd9a20ee43` |
| 18 | `def` | [toNeeds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/toneeds.md) | 181 | `declaration-track:1e3ff42e933118fd24ff3c8f8c4c34a80693b3e0ba7280563bd0dec9249aa7fc` |
| 19 | `def` | [isProvidedBy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/isprovidedby.md) | 191 | `declaration-track:2dcb1ef1e1bb12a9e5ca1e3f0e1b21a61b9b1b69a09264e32362d546cbcf27c2` |
| 20 | `def` | [get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/get.md) | 199 | `declaration-track:dff93c80a14a189f79a5f4b1188688e5e6bb7270855baa7dd68e1571e54f60e5` |
| 21 | `def` | [has](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/has.md) | 211 | `declaration-track:938ef4bbfbfed563c159283f2dc3ae549b550d4d25797d7b71f8897748344906` |
| 22 | `def` | [set](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/set.md) | 215 | `declaration-track:87b753e5b7552687cba4a0979f9da6acd078300a4bab891c4ffa28c05eb7a295` |
| 23 | `def` | [modify](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/modify.md) | 229 | `declaration-track:99a0e8c4f518cf532c731f95712afab2e0374cb4d43977bdda5ac784d0c7aa10` |
| 24 | `def` | [union](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/union.md) | 242 | `declaration-track:6de402ecf42bc68392171b140498e89395e9f1e948b33e108eeec39c0435c6a3` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/instance.md) | 247 | `declaration-track:a0511a4136dd0b25ffc00799c0165c2a641182bdfca26bec2934274ee4b668b5` |
| 26 | `inductive` | [ComptimeDependency](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/comptimedependency.md) | 250 | `declaration-track:4d4347d03624c9169c85bb28a1a341e158d6763108655cce90664b37ce70ffb6` |
| 27 | `inductive` | [ConstLocation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/constlocation.md) | 260 | `declaration-track:b6f4475ddb128b3849a07ac7965c3c4c408dfc9a7b6e87d381265df3fb3e40b8` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/instance-source-edition-4.md) | 263 | `declaration-track:fe03c938fa051bcc9bd31e124587224096bfe9e7bf7faf6936a9f50b3a3c2376` |
| 29 | `inductive` | [DeclDeclNeedsKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/decldeclneedskind.md) | 268 | `declaration-track:c5cbc3f59729a11573c88b5e0734ce14a9668ebe5fc1b359ce688d403bbc2653` |
| 30 | `def` | [pretty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/pretty.md) | 314 | `declaration-track:a20452c302773fa2882bb0aaa2e9f1211a2332f2c8a94a495205d11a9ce79a34` |
| 31 | `def` | [irPhaseNeeds?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/irphaseneeds.md) | 327 | `declaration-track:f7f2b451d9c0b9a43940ed27d531badb0cbbd842216a6087dc5bbff2d427b963` |
| 32 | `structure` | [Stance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/stance.md) | 336 | `declaration-track:0dd05b184d89939aab528200b7fb21655eb2f818e3e4957c84653c21923e4450` |
| 33 | `def` | [Stance.isPrivate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/stance-isprivate.md) | 360 | `declaration-track:d0f6498286114fa9cfe409b89d14c027b81a68478c9254a61985f11df058be93` |
| 34 | `abbrev` | [DeclDeclNeedsKindSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/decldeclneedskindset.md) | 365 | `declaration-track:d8fb8293ee0c26fda881d493626fa46dc4831a55fb5788f39b9616fa4aaec554` |
| 35 | `structure` | [DeclNeed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/declneed.md) | 369 | `declaration-track:f5306255f1b4e0a02f63fc0eec73da2fe7baeb3b6a52377761f14a436394b399` |
| 36 | `def` | [DeclNeed.insertFreeDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/declneed-insertfreedecl.md) | 390 | `declaration-track:e777f720489ff69273ab511be006f95d87054b905a7d025c7c4b56aaa7979c85` |
| 37 | `def` | [DeclNeed.insertFixedDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/declneed-insertfixeddecl.md) | 397 | `declaration-track:f174f0c28526513f715160550db876b08befa9fe017dc354cc18d918b9ab429b` |
| 38 | `def` | [DeclNeed.insertExtraModUses](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/declneed-insertextramoduses.md) | 404 | `declaration-track:f4ae42681533e3af13a316662bd50b33776c5893f0d5703892060900cdacfa6c` |
| 39 | `def` | [DeclNeed.isAutoDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/declneed-isautodecl.md) | 412 | `declaration-track:aa53c5b316c65557b892c21454c470ca96017a5111bf77b9780a5ea103b90507` |
| 40 | `abbrev` | [DeclNeeds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/declneeds.md) | 417 | `declaration-track:6869c3762c561d9aad06b482c5ec2840bfd153ab6e6def65948fe7802b072e1f` |
| 41 | `def` | [DeclNeeds.insertAutoDeclLink](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/declneeds-insertautodecllink.md) | 419 | `declaration-track:2c01c0359d7b9046abbf0832a2a500a6a9a25aae1057a50a7644d9dd00fd5acd` |
| 42 | `def` | [DeclNeeds.insertFreeDeclFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/declneeds-insertfreedeclfor.md) | 428 | `declaration-track:e5c1148d39605e52aea64babf1881b43e4e4d3b59376261c6f9d9a8470e010ec` |
| 43 | `def` | [DeclNeeds.insertFixedDeclFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/declneeds-insertfixeddeclfor.md) | 432 | `declaration-track:f9abbafd05ed7d368e69b0f8c8401d12c84b0bf10c58eb87b93f8770f082253b` |
| 44 | `def` | [DeclNeeds.insertExtraModUsesFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/declneeds-insertextramodusesfor.md) | 437 | `declaration-track:f5ad46f4095c99c9436c50c4e86b42b01d4650e1f242659098d0037d25f8a9c7` |
| 45 | `def` | [Stance.isPublicAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/stance-ispublicat.md) | 443 | `declaration-track:db97bd04339b4a3c22dc02cb822c4bf4f16937c6e07d9a7cbf7008721fa1183b` |
| 46 | `def` | [Stance.isPrivateAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/stance-isprivateat.md) | 449 | `declaration-track:5ce54cf1917dfc52ee39efc7e37ed9c5a1ed56a3d243559e53ae493dbb429aff` |
| 47 | `def` | [findStanceOfNonImported?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/findstanceofnonimported.md) | 455 | `declaration-track:9851748529ac095e3437e611469f8cd694b02ecc45e2eefe7bf3dbeec1cc6d9f` |
| 48 | `def` | [shouldHaveGeneratedCode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/shouldhavegeneratedcode.md) | 472 | `declaration-track:2fa1ef7a6ea12a9655053483831fc6a1cb129da9b416afb3378add138c3066df` |
| 49 | `def` | [findLowerBoundStanceOfImported?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/findlowerboundstanceofimported.md) | 499 | `declaration-track:195b32929fcaa1bb083ba3842c9f06f7236b4fe439dc4fe2b30a5b682be82c84` |
| 50 | `def` | [Stance.toImportNeedsKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/stance-toimportneedskind.md) | 540 | `declaration-track:80a19034a0986c693817d12a58cc1e808858fcde979146352d0ebbfa24ba2e42` |
| 51 | `abbrev` | [StanceM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/stancem.md) | 572 | `declaration-track:b47ae31994cb1a915da7767b24375032f61a14b9e668b6da24ec83ac9cff9c2c` |
| 52 | `abbrev` | [StanceM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/stancem-run.md) | 574 | `declaration-track:15eb8c3adefa69e6962b83b7f841a951831585335200607a574b7f5ba6a27fbd` |
| 53 | `abbrev` | [StanceM.run'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/stancem-run-source-edition-2.md) | 577 | `declaration-track:c48439cb98901e4130ab02d192404c782e76a1c2a91c6617fd059075af965bf4` |
| 54 | `def` | [getStance?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/getstance.md) | 582 | `declaration-track:55a9074cf352f0bb6f1772b7404cfee0b6942833d16875347fb0f9b7b2efc821` |
| 55 | `def` | [isDeclNeedsAutoDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/isdeclneedsautodecl.md) | 596 | `declaration-track:67549e12fe0090b9c580eb858e96a7a0d59463660f17b7d5ab842bab4625c163` |
| 56 | `def` | [calcDeclConstInfoNeeds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/calcdeclconstinfoneeds.md) | 606 | `declaration-track:a0e19723f220fbece34e4983a350be54a57ef08ed28d677571759d8c1bbb284d` |
| 57 | `def` | [DeclNeeds.calcSyntaxNeeds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/declneeds-calcsyntaxneeds.md) | 654 | `declaration-track:0638b67a69465c356b596b7ce3553f0d7f024b4b16a227b8042d8c41d41b17c6` |
| 58 | `def` | [DeclNeeds.calcIRNeeds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/declneeds-calcirneeds.md) | 684 | `declaration-track:784c08c65123c49caefb2e3aa2f6b5edff8930dfc0c4ca714dcd059969832a42` |
| 59 | `def` | [withElabCommandCapturingNeeds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNeedsPublic.lean/declarations/withelabcommandcapturingneeds.md) | 720 | `declaration-track:94a35f1678f0becc8ad650ba47e8401fb4fc16f8564c11be76145286f2478d3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=daac92036ffdccaed760bc510e981a055b6f4f3dfe05ffc893fd97f9a16ed8df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variantddd7dc97f5e43e12fc12676415a37983c1ad0213eb60e784a7852aebe5ac3fe1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

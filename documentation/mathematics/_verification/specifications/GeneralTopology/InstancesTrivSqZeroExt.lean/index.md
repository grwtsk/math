# Verification target: Instances Triv Sq Zero Ext

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35759bafc950c5ce8bb2852dfa008f9a9db24b1c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/index.md) · [Full source](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35759bafc950c5ce8bb2852dfa008f9a9db24b1c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.TrivSqZeroExt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearMapPiProd` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpace](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/insttopologicalspace.md) | 39 | `declaration-track:410d0a679493c5e9b0089ca3ca46f2e8ba4b2ae9d0edd66f1491c10886f777a6` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/instance-source-edition-9.md) | 42 | `declaration-track:ed3e8cbbd733a5ebad9aad193ff896a4884b3682fab57858961f45aa01848383` |
| 3 | `theorem` | [nhds_def](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/nhds-def.md) | 45 | `result-track:7788974aaa35021ad91c4e8a90f7269818e8bd1248225374ab36dd4c3c330fe1` |
| 4 | `theorem` | [nhds_inl](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/nhds-inl.md) | 47 | `result-track:8ed9a9c8ab18b17c91d5fd2dfefb2ca52e59b7697b3b18d19ab4128c52c841b0` |
| 5 | `theorem` | [nhds_inr](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/nhds-inr.md) | 50 | `result-track:373e271b6cfe90c9602d163f7fe8542a7a68a4235c1adb7746153b7fcbc21676` |
| 6 | `theorem` | [continuous_fst](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/continuous-fst.md) | 53 | `result-track:82dfe457bffd7242a3e5a140e6a0b874ecfff914d01eb61ec5098dcb49c391d2` |
| 7 | `theorem` | [continuous_snd](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/continuous-snd.md) | 56 | `result-track:95839a0b68bb326088786668541df018fdb1e1883f35ebbb41ef87aee9a199db` |
| 8 | `theorem` | [continuous_inl](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/continuous-inl.md) | 59 | `result-track:81eaace488bcc65decc1722e9035f54fa84a13e1137050c23318b3cdce692760` |
| 9 | `theorem` | [continuous_inr](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/continuous-inr.md) | 62 | `result-track:ee7519fe739d8be973e975e95e3124e703bce05f694c16c64992aa5a19f964d5` |
| 10 | `theorem` | [IsEmbedding.inl](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/isembedding-inl.md) | 65 | `result-track:96667c2cc5d6600e516248c4d95d1999c9e588c3a8eda609e254a61c7d7dc729` |
| 11 | `theorem` | [IsEmbedding.inr](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/isembedding-inr.md) | 71 | `result-track:c29b44d0221e37599d0b1668c2516b2cf86fc3f448b53eb17231e033210fcb32` |
| 12 | `def` | [fstCLM](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/fstclm.md) | 81 | `declaration-track:7da0507a5a7e342e33e933dd53f8f517ff9ed8dc2e49e1a3b1abf21d28536cc1` |
| 13 | `def` | [sndCLM](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/sndclm.md) | 86 | `declaration-track:e1256c299810e33d2afc4fba03cd7170e3ec2c8f2a0d91ef86ac10c9e35e1ac8` |
| 14 | `def` | [inlCLM](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/inlclm.md) | 93 | `declaration-track:2bbae8e8e25231c3460369749e8ecae25884dbc27cef23c9fd625bd2ee7af9bd` |
| 15 | `def` | [inrCLM](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/inrclm.md) | 98 | `declaration-track:8c86bc0f12e60b8e47d7c9dd091e5f70bb6af601527b49d637914b70b3ce0c03` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/instance-source-edition-7.md) | 103 | `declaration-track:bf465d87e2ba2effe9b9148218f0636c6d27cdbef533d84e69571028d461015e` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/instance-source-edition-3.md) | 106 | `declaration-track:21225586907d09828c2e47135557ca396df70cdd66ae40e1d9019a41d06a4c61` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:1a3b0e19b40fed9007efd3c410a8ae4bc52bc77e7eaebeee92d3d056ac49ee6e` |
| 19 | `theorem` | [topologicalSemiring](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/topologicalsemiring.md) | 118 | `result-track:697985792fe07981fef40c986fceaeba522c75df2af899b9dcf14473da8b8dd3` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/instance-source-edition-4.md) | 122 | `declaration-track:5b8e6ed02b0ff133f9eaa8daa0c2f9a43a91e0e47ff90d97d52beb05a16a02e7` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/instance-source-edition-6.md) | 126 | `declaration-track:b97cc4ad3d5cae77bd0d658ccc024723a408b1bd7d71f9adbba7c9be81aee835` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/instance-source-edition-8.md) | 130 | `declaration-track:cc66ccd2fc60132b048ec6998622c5e4e261d109b90601148b35e708ad66a50f` |
| 23 | `theorem` | [hasSum_inl](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/hassum-inl.md) | 136 | `result-track:5be622e98ac322dceeb4050b40283d0169b62d6a9733efc7a48aa4744c154355` |
| 24 | `theorem` | [hasSum_inr](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/hassum-inr.md) | 140 | `result-track:95042fdcf0a4cc3652d853ad4f294115ce6faab94e52f31ab432ab8e086905d6` |
| 25 | `theorem` | [hasSum_fst](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/hassum-fst.md) | 144 | `result-track:a16e54b241f5d800f136dac5096d4583561640cd4bb545229eed66df69e0d821` |
| 26 | `theorem` | [hasSum_snd](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/hassum-snd.md) | 148 | `result-track:f0d3f157e2ee12cfeb1ecc4b7e87b2ee6995ba4db96fafd37a2aed3a7e8af5e3` |
| 27 | `instance` | [instUniformSpace](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/instuniformspace.md) | 157 | `declaration-track:e37de6d62ec2ead0e5d87c9db8975e5f839056471668b9184b2484d675b7e3a5` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/instance-source-edition-5.md) | 161 | `declaration-track:9ba12d578291e76d22b08b07bc38380a883d936ac711350635ee13dfcd255144` |
| 29 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/instance.md) | 164 | `declaration-track:05eb81a530cb658a6670ccf094e26eeb98d45324be02dfba00f80ba1c037abf7` |
| 30 | `theorem` | [uniformity_def](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/uniformity-def.md) | 170 | `result-track:88232dec692e6c6b869aaefee139b1a9ab8d25e6dc6bafdae363745c577867bf` |
| 31 | `theorem` | [uniformContinuous_fst](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/uniformcontinuous-fst.md) | 175 | `result-track:18e37dd6f2f5a34a8348f18d554599358ee24a302ed97f36cabc96ecc0072b1c` |
| 32 | `theorem` | [uniformContinuous_snd](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/uniformcontinuous-snd.md) | 178 | `result-track:d749dd79a50e732982dd9519830e337efbdf88dce9b87dd57cf70b4afda64b97` |
| 33 | `theorem` | [uniformContinuous_inl](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/uniformcontinuous-inl.md) | 181 | `result-track:90096cebbc21b299ec9715300803a37bbbc3b1c4603a497ec68d18139f76331f` |
| 34 | `theorem` | [uniformContinuous_inr](../../../../GeneralTopology/InstancesTrivSqZeroExt.lean/declarations/uniformcontinuous-inr.md) | 184 | `result-track:3a6f1a84e359bedddd4ee23004428d2f8fb8baf54dab7399725ad62a66d6072f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=264bce4d0a6ce564f4d5b30181f99318526bac47c795b37b69488f97de412b42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

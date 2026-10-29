# Verification target: Weak Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25561179c43f0b60f69c6f68e424d3524e80055f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Weak/Variantf190651be2b348814a5ea41c4a884769912cd81284b000be7f0859b07c041db2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/WeakNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/WeakNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25561179c43f0b60f69c6f68e424d3524e80055f`.

Source path: `GRWTSK/Topology/MetricTopology/Weak/Variantf190651be2b348814a5ea41c4a884769912cd81284b000be7f0859b07c041db2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Weak/Variantf190651be2b348814a5ea41c4a884769912cd81284b000be7f0859b07c041db2.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/instance.md) | 60 | `declaration-track:5af8fb74015862f0cab012579d22f92ee8a9aa9a44fa2cef597ab85a7f28ebd6` |
| 2 | `theorem` | [edist_none_none](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-none-none.md) | 70 | `result-track:7256e77fb833bd3be4e7c50a8ae73743d79528c53b39d472238f76692911d464` |
| 3 | `theorem` | [edist_none_some](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-none-some.md) | 74 | `result-track:ee1c4f816416eb92ca8570651ad757684118f805005eb82bef17c70523fcec9e` |
| 4 | `theorem` | [edist_some_none](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-some-none.md) | 78 | `result-track:0e544401c20e3b8630dbabe0631a7790324df892598d39b48332b31793c158a4` |
| 5 | `theorem` | [edist_some_some](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-some-some.md) | 82 | `result-track:31291e8c27d47a694fa7f7227dcde7581267a419e9332a689c9acdf992499d02` |
| 6 | `theorem` | [some_eball](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/some-eball.md) | 85 | `result-track:8461b727a4538573979199e9569eefc8d62e33c8c3cc5ace910a9dd88a84ddc5` |
| 7 | `lemma` | [edist_self'](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-self.md) | 97 | `result-track:7d602c3ee9a16e9cef8d06d006acfffe4702421d62ca1243a4f02473b213dbf7` |
| 8 | `lemma` | [edist_comm'](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-comm.md) | 102 | `result-track:85980eb0e0026724bac8e0c9aca70fd4eeecdca5c9057e530b0f16f0b394ec84` |
| 9 | `lemma` | [edist_triangle'](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-triangle.md) | 109 | `result-track:d12c23b66f37471af951d167f619931344ceacc82f83baeb4a30a4513288e411` |
| 10 | `theorem` | [ball_infty_of_pos](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/ball-infty-of-pos.md) | 120 | `result-track:27ce436e15127204501a6d6068803b302c0024f5f41281a283765389ebbafc82` |
| 11 | `abbrev` | [WeakPseudoEMetricSpace.OfIsOpenEmbedding](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/weakpseudoemetricspace-ofisopenembedding.md) | 130 | `declaration-track:702702ac2fcef39c2092a62d42fba2383819651cfd15fdd5c32c2877eb8eb7e6` |
| 12 | `abbrev` | [WeakEMetricSpace.OfIsOpenEmbedding](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/weakemetricspace-ofisopenembedding.md) | 175 | `declaration-track:bd2293f357fb3d278919a9ac494de180698a8328f298e313b886255149cbf9c2` |
| 13 | `theorem` | [WithTop.isOpenEmbedding_some](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/withtop-isopenembedding-some.md) | 196 | `result-track:b0f035e920706d7d97ce0ea1555c4cc12466740469eb343b2b147b669d4665ea` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 201 | `declaration-track:66f25aba5c79e7195807e534c62681bf644c18e26661acd4a78581ecf4e13e00` |
| 15 | `instance` | [instWeakPseudoEMetricSpaceWithTop](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/instweakpseudoemetricspacewithtop.md) | 211 | `declaration-track:13cc7ace7c8a07a84d004e60b5d8ddcc553167ad223d133d7ea66c459811425d` |
| 16 | `instance` | [instWeakEMetricSpaceWithTop](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/instweakemetricspacewithtop.md) | 222 | `declaration-track:6513fa080acb5809da4c0c5e8bd67a57b95977ed25bc52c4fb913cf0bde34df4` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 229 | `declaration-track:849d637e474fb839b1b59d84022ef3c5d90fd1d3e74346bf25496d5c8397ab4c` |
| 18 | `instance` | [instWeakPseudoEMetricSpaceOnePoint](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/instweakpseudoemetricspaceonepoint.md) | 238 | `declaration-track:ef8a76a4bf0bbb25c11263a6ae2c1e72fdaea79bafab91d108a5be96812c614b` |
| 19 | `instance` | [instWeakEMetricSpaceOnePoint](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/instweakemetricspaceonepoint.md) | 247 | `declaration-track:360db7fec16041fb018e9f2cbb117e90b0688213177474910b7a200f652de433` |
| 20 | `instance` | [instWeakEMetricSpaceENNReal](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/instweakemetricspaceennreal.md) | 255 | `declaration-track:4e289a1e6a0f66370a92138b8d3cb7bf9316b217eaf0a0bcf25a0d34799fcba0` |
| 21 | `instance` | [instWeakEMetricSpaceEReal](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/instweakemetricspaceereal.md) | 259 | `declaration-track:a90c6e16f081dce28293ae99e45156bed4cdda9effbd383b60c83306859f7297` |
| 22 | `instance` | [instWeakEMetricSpaceENat](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/instweakemetricspaceenat.md) | 263 | `declaration-track:9d50b2c6fc4f10ffd1f0861bf41b0dd4350d1a02f92aeab71f58ebf469131696` |
| 23 | `theorem` | [edist_top_coe](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-top-coe.md) | 269 | `result-track:00fe907a01682164efc4f3aece2a1729280b2732384e1ed9b26068d05c3b2b64` |
| 24 | `theorem` | [edist_coe_top](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-coe-top.md) | 273 | `result-track:88b3779c03903eae13a2a4f5058c6a4059f1b6f026ca23499978d044cd20c854` |
| 25 | `theorem` | [edist_coe](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-coe.md) | 277 | `result-track:c6ce356b8fed2128e94b738964ab3fd254071871c0ba33be75564093e0e052dc` |
| 26 | `theorem` | [edist_eq_top_iff](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-eq-top-iff.md) | 281 | `result-track:b6203cc2b8813cac01ceeccf6e275aa9bdcf42649ab184b825f0911f91a93298` |
| 27 | `theorem` | [edist_eq_max](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-eq-max.md) | 284 | `result-track:fab89e5319a698a825ce229709b4bb8d0be55cb9e254485687df1f4ccbab6427` |
| 28 | `theorem` | [edist_le_iff_le_add_left](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-le-iff-le-add-left.md) | 291 | `result-track:81f6a3f3d88edd4092fb4598395a76bfbc557b8bbf71ca9d66ee90b5e281edcc` |
| 29 | `theorem` | [edist_le_iff_le_add_right](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-le-iff-le-add-right.md) | 294 | `result-track:1d3e542b2c5e8e557f5b94a07a79eb1208ca52fd29a8d7959600de771e301cf4` |
| 30 | `theorem` | [sub_le_dist](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/sub-le-dist.md) | 297 | `result-track:494181834db6294d88b1abf89da7212594b927c0ff4e74422108ed4be282cc78` |
| 31 | `theorem` | [le_add_edist](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/le-add-edist.md) | 300 | `result-track:ef482426925a893d9831089e312bd65539cc18f96c6b3de07bd1809a2adb30a3` |
| 32 | `theorem` | [edist_zero_left](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-zero-left.md) | 304 | `result-track:4878372c7ff208b6e7910304a26a85ac7b34b5259cf7778179488474506954ee` |
| 33 | `theorem` | [edist_zero_right](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-zero-right.md) | 308 | `result-track:f8e1e262937799deeda4bb1b9ae30dec54a1b6be124c1d034ea51f6855009da2` |
| 34 | `theorem` | [edist_add_left](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-add-left.md) | 312 | `result-track:f13ae49ff16c59af6c50930a76f52ce3c89213c7faa9f6ffd91ed312cd6fffe4` |
| 35 | `theorem` | [edist_add_right](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-add-right.md) | 317 | `result-track:1b36b93bd872d568f4f0ae6b711e97ec6e91d4880fc19601278164f579a9f41f` |
| 36 | `theorem` | [edist_mul_left](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-mul-left.md) | 321 | `result-track:74c7d225439ece0b8db7846e884c2834218a24be8a2fd659fb9b4a0de58a8858` |
| 37 | `theorem` | [edist_mul_right](../../../../GeneralTopology/WeakNamespacedPublic.lean/declarations/edist-mul-right.md) | 325 | `result-track:a9bee24d7ef9c6c20e81ce11c548b32f84d9b9a6571600bd4cf0e88434ca6db3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de8dd64ca984d7661a9cd6b99a150349dd548b1b5d7d717ef69f2908e6dbe1bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Weak/Variantf190651be2b348814a5ea41c4a884769912cd81284b000be7f0859b07c041db2.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Weak/Variantf190651be2b348814a5ea41c4a884769912cd81284b000be7f0859b07c041db2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

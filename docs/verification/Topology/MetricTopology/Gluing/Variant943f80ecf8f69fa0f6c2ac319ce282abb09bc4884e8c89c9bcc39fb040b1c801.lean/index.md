# Verification target: GRWTSK.Topology.MetricTopology.Gluing.Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fa15e7207538ae55fdd3880b48e02d4ff055608",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fa15e7207538ae55fdd3880b48e02d4ff055608`.

Source path: `GRWTSK/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/gluedist--39e0265518ac157a7d056cbe.md) | 78 | `declaration-track:39e0265518ac157a7d056cbe576e61c8cf92e0c17b1e195ed1c74f07f7f2c1d7` |
| 2 | `theorem` | [glueDist_self](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/gluedist-self--1fbef84b4891cc780143b94f.md) | 85 | `result-track:1fbef84b4891cc780143b94f5ca8960507191a37909304614ab7214c08e05b1c` |
| 3 | `theorem` | [glueDist_glued_points](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/gluedist-glued-points--6d28ff7cc2b9c198de0d3e21.md) | 89 | `result-track:6d28ff7cc2b9c198de0d3e21237ed7c1cae8f7cf54b739b4f2af92d06e736b2c` |
| 4 | `theorem` | [glueDist_comm](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/gluedist-comm--0f6b80dcc2206ca2e4a2093e.md) | 100 | `result-track:0f6b80dcc2206ca2e4a2093e0a00001396bb96c07b89b01d1057bfa561f1ca71` |
| 5 | `theorem` | [glueDist_swap](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/gluedist-swap--a05aaf6f764b5f57b3c1d977.md) | 107 | `result-track:a05aaf6f764b5f57b3c1d977dc1250d17c56c095b75559abf2303e0ff7cb7f2f` |
| 6 | `theorem` | [le_glueDist_inl_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/le-gluedist-inl-inr--e9a68eed886f1f04c905b5c2.md) | 114 | `result-track:e9a68eed886f1f04c905b5c2b27e5a9569bf4989fc891f5f53188c8a3ff0ef64` |
| 7 | `theorem` | [le_glueDist_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/le-gluedist-inr-inl--a824ee8cc6207b07b2e38a83.md) | 118 | `result-track:a824ee8cc6207b07b2e38a83b6fbe3357bcf7e6144b19d54c8d2e56f4573dfd9` |
| 8 | `theorem` | [glueDist_triangle_inl_inr_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/gluedist-triangle-inl-inr-inr--f96107b92078894677c81c00.md) | 125 | `result-track:f96107b92078894677c81c00cac77c0d09289ecccdbfef4299ec4fea63445971` |
| 9 | `theorem` | [glueDist_triangle_inl_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/gluedist-triangle-inl-inr-inl--a6bfdf51ff0f3994b3ebf5d0.md) | 134 | `result-track:a6bfdf51ff0f3994b3ebf5d050fc7189dc625192b22c0be0b00b113a22d686e2` |
| 10 | `theorem` | [glueDist_triangle](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/gluedist-triangle--dd919609900c5f7725f8f511.md) | 146 | `result-track:dd919609900c5f7725f8f5110aa75108a570a330aeb92526fb27025ada6d2074` |
| 11 | `theorem` | [eq_of_glueDist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/eq-of-gluedist-eq-zero--96c66f5e03b804d3f2d12af4.md) | 169 | `result-track:96c66f5e03b804d3f2d12af47256301da575951b6bc8ff3d63330db1ed8486d3` |
| 12 | `theorem` | [Sum.mem_uniformity_iff_glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/sum-mem-uniformity-iff-gluedist--141a9b74f2005f020b7ace5c.md) | 176 | `result-track:141a9b74f2005f020b7ace5c6c5943ca3e04d1aac10a57ed32cd097a30fdc432` |
| 13 | `def` | [glueMetricApprox](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/gluemetricapprox--f5b067f9f1c6f7dd4038cfb3.md) | 197 | `declaration-track:f5b067f9f1c6f7dd4038cfb3a53feb7ee7a107c354737d332bdc75486a023259` |
| 14 | `def` | [Sum.dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/sum-dist--144da9edabc3e3a7b1cece1d.md) | 232 | `declaration-track:144da9edabc3e3a7b1cece1daa39702d6ea048e7f0dc077723218ab9b244eb9f` |
| 15 | `theorem` | [Sum.dist_eq_glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/sum-dist-eq-gluedist--473abe62b23accf62c2dfd8c.md) | 238 | `result-track:473abe62b23accf62c2dfd8cdd4293b24353071fc03584ec7a963967f6d47074` |
| 16 | `theorem` | [Sum.dist_comm](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/sum-dist-comm--29d6bc83f8c0439d9735c732.md) | 245 | `result-track:29d6bc83f8c0439d9735c73263b656f2a1b9fc5ab04dcbdd4a02d69f30dfdccc` |
| 17 | `theorem` | [Sum.one_le_dist_inl_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/sum-one-le-dist-inl-inr--55d3dcf59120dfaa541a2a12.md) | 248 | `result-track:55d3dcf59120dfaa541a2a12faf285809445c549e84ba9ff9da4e488bbb57c21` |
| 18 | `theorem` | [Sum.one_le_dist_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/sum-one-le-dist-inr-inl--919ebb7c9bb4e751aff1fee1.md) | 251 | `result-track:919ebb7c9bb4e751aff1fee1b90d7df7b7eced1a3e6b9970100c71822926625d` |
| 19 | `theorem` | [Sum.mem_uniformity](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/sum-mem-uniformity--3e412187e38a934fb5574fa9.md) | 255 | `result-track:3e412187e38a934fb5574fa980d3f2e7f1e52344e85a1c7ca8f9a8e50cf0b404` |
| 20 | `def` | [metricSpaceSum](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/metricspacesum--963371c42f9f08bf8a48d517.md) | 276 | `declaration-track:963371c42f9f08bf8a48d5170f777c887d764a5ba1cd61ab35cce7cd5d60b9be` |
| 21 | `theorem` | [Sum.dist_eq](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/sum-dist-eq--342190c3ce4689b04ce40b4b.md) | 303 | `result-track:342190c3ce4689b04ce40b4b14ff2009addd3a16059c22692ff62ec2e2a2cc58` |
| 22 | `theorem` | [isometry_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/isometry-inl--8b7a90f6e402e08a04be9650.md) | 306 | `result-track:8b7a90f6e402e08a04be9650a08e2857a559d6c52e328dd25338d13e3ea954a8` |
| 23 | `theorem` | [isometry_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/isometry-inr--9f4a5fbe94af29f2ccb62152.md) | 310 | `result-track:9f4a5fbe94af29f2ccb621525ce3859c1b009e14dadd17a51e65daf474c24733` |
| 24 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/dist--a0de5904898e44cdd252fad4.md) | 330 | `declaration-track:a0de5904898e44cdd252fad4a96e5e0171a2d9efb3dfd985504aa11f7de92338` |
| 25 | `def` | [instDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/instdist--c37c150bf407692099c3426e.md) | 343 | `declaration-track:c37c150bf407692099c3426ed621e9064416c1bf9492822c79abee326d802d9e` |
| 26 | `theorem` | [dist_same](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/dist-same--dfaff3b890e2f78ed2d7083f.md) | 349 | `result-track:dfaff3b890e2f78ed2d7083fe0afcb1b2e9c011855e77f2e68a1e0786f575009` |
| 27 | `theorem` | [dist_ne](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/dist-ne--03da23b398031155c0d5f6f6.md) | 353 | `result-track:03da23b398031155c0d5f6f65cfa9231447f5f165875dc5b323e9faa482e5869` |
| 28 | `theorem` | [one_le_dist_of_ne](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/one-le-dist-of-ne--88a3ca32c2b56364ad25b086.md) | 357 | `result-track:88a3ca32c2b56364ad25b086355dfacf9eedc70a825e02021c539912291bd71f` |
| 29 | `theorem` | [fst_eq_of_dist_lt_one](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/fst-eq-of-dist-lt-one--986bf3bca50de128215a4e5b.md) | 362 | `result-track:986bf3bca50de128215a4e5b9906f21046d06aaa7f91cceda970d2131ce8d7b7` |
| 30 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/dist-triangle--076efd31fd78d117e0d2d2af.md) | 367 | `result-track:076efd31fd78d117e0d2d2af25ced1e945f06f64c938b167cf9a2b0a3c72f060` |
| 31 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/isopen-iff--37f1069225a9cfea558f28b3.md) | 398 | `result-track:37f1069225a9cfea558f28b3ae0628452347dd8656747c68acb1572e956d71a1` |
| 32 | `def` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/metricspace--7961196b8b4bcb0fdf19a2f9.md) | 427 | `declaration-track:7961196b8b4bcb0fdf19a2f9ac9ba6ab8d065bfc597fbfc868074c226d674c20` |
| 33 | `theorem` | [isometry_mk](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/isometry-mk--c741a0316d9d32301ec89cfe.md) | 448 | `result-track:c741a0316d9d32301ec89cfe07f4a08ec3a39c6bac54713088a5fc1a9c0ed2f5` |
| 34 | `theorem` | [completeSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/completespace--f8eb7dd59233b3e0335d9fde.md) | 452 | `result-track:f8eb7dd59233b3e0335d9fde34c2d68c556665ddfdd55e6f96876f6f7db31f8b` |
| 35 | `def` | [gluePremetric](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/gluepremetric--4234becf4219b2dae32cf969.md) | 477 | `declaration-track:4234becf4219b2dae32cf96982d47c2edae04bb9ac7c124e9c4b984fcdb15a92` |
| 36 | `def` | [GlueSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/gluespace--50cb58c94ad0aab7ef7d79c8.md) | 485 | `declaration-track:50cb58c94ad0aab7ef7d79c8720fa1afb696279acf314961f9ab231d3feac64b` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/instance--e6513c2cfb978311e4b8e0c1.md) | 488 | `declaration-track:e6513c2cfb978311e4b8e0c19ea0c369599f4fd49af7eae05377e63e417920a0` |
| 38 | `def` | [toGlueL](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/togluel--37230636ce93c0cef8bd98e1.md) | 493 | `declaration-track:37230636ce93c0cef8bd98e17ccac5bc9440101fda0b82af02b698755f007b03` |
| 39 | `def` | [toGlueR](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/togluer--8e4f81bb8bc0249f7c19c693.md) | 497 | `declaration-track:8e4f81bb8bc0249f7c19c6931a2ae818300bc6ed9f520f774c2f4067324f3051` |
| 40 | `instance` | [inhabitedLeft](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/inhabitedleft--376fc79afcaa62bae969697d.md) | 500 | `declaration-track:376fc79afcaa62bae969697d32da0378437cb5b7f3b8fbe0df24950c39582592` |
| 41 | `instance` | [inhabitedRight](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/inhabitedright--8d7c08ac0612a87f41008d33.md) | 504 | `declaration-track:8d7c08ac0612a87f41008d33d96bc583a5d6cb3a9f1f2d8c8b7339f221b70297` |
| 42 | `theorem` | [toGlue_commute](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/toglue-commute--91bca39a229b493b7dac166d.md) | 508 | `result-track:91bca39a229b493b7dac166d1e09a15d2a3aa4fe0e40b2e1e2bec5583a623232` |
| 43 | `theorem` | [toGlueL_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/togluel-isometry--88f9b40ade54b4a682eda7b1.md) | 517 | `result-track:88f9b40ade54b4a682eda7b1d9386ad4acab1dbf2ad3919bb2ba72c51f816eb4` |
| 44 | `theorem` | [toGlueR_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/togluer-isometry--29bb7a5bcc3a31274e533f69.md) | 520 | `result-track:29bb7a5bcc3a31274e533f69f1183e19885c06730af46c4b8aee8412e78964cc` |
| 45 | `def` | [inductiveLimitDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/inductivelimitdist--75e107f0198d0f2addd3db37.md) | 549 | `declaration-track:75e107f0198d0f2addd3db3797fbc6c20b9885f4858dc7cfa57c72dc17cd851b` |
| 46 | `theorem` | [inductiveLimitDist_eq_dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/inductivelimitdist-eq-dist--a8aa873c6eb2c47d530c70dc.md) | 555 | `result-track:a8aa873c6eb2c47d530c70dc3b9917453a8b3f9471dbc3b96de54d47ff187863` |
| 47 | `def` | [inductivePremetric](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/inductivepremetric--9c1603eaf3fef07b1b113837.md) | 577 | `declaration-track:9c1603eaf3fef07b1b11383782d7232fc7d815276803ec2f159fdb44edc027c8` |
| 48 | `def` | [InductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/inductivelimit--7de78d0a73ca8dfdf4ab0f96.md) | 601 | `declaration-track:7de78d0a73ca8dfdf4ab0f96a8fcca2c2d561bca436fec3883de0c2a70febbf2` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/instance--012a6bbec8dcccc85795c954.md) | 604 | `declaration-track:012a6bbec8dcccc85795c954975ca8590fae38c2671531ddca5cdc2fe7c5a9b8` |
| 50 | `def` | [toInductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/toinductivelimit--d965d6c1220b704305c9a411.md) | 609 | `declaration-track:d965d6c1220b704305c9a411cd19c963f0ce13305ca87534fe45d4789cd78f9d` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/instance--1de1e4c79188f802c1d8bc1c.md) | 612 | `declaration-track:1de1e4c79188f802c1d8bc1ce5721db6421ae31855a472e639d1593585c56e05` |
| 52 | `theorem` | [toInductiveLimit_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/toinductivelimit-isometry--112caa01be760acc464c4f9b.md) | 616 | `result-track:112caa01be760acc464c4f9b2d8a8c7a9001323f7dae0db5b9bd174da7731521` |
| 53 | `theorem` | [toInductiveLimit_commute](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/toinductivelimit-commute--cc329e4b872b08626e3a79fc.md) | 624 | `result-track:cc329e4b872b08626e3a79fc14488fbf39272724b567d0e1feca0d4a0f5c48f6` |
| 54 | `theorem` | [dense_iUnion_range_toInductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/dense-iunion-range-toinductivelimit--9a5278804c382f20b615add4.md) | 638 | `result-track:9a5278804c382f20b615add4c0d4f29a5a3dc8a58df5a8cc8b86cd8eb3cbd11b` |
| 55 | `theorem` | [separableSpaceInductiveLimit_of_separableSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/declarations/separablespaceinductivelimit-of-separablespace--998c54b1cf3f1d7fac719936.md) | 647 | `result-track:998c54b1cf3f1d7fac719936f9a819d81d948dceaf542c1343c3bdcb91107a5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

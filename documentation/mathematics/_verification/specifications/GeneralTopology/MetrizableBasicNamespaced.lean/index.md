# Verification target: Metrizable Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d445879bd3d09255a916dd35baef95b1b8a97729",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4e60b1fe76fd63f5af768610ca9cd08e6070ba20ca2d0a93a3e42403f4be9c9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d445879bd3d09255a916dd35baef95b1b8a97729`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant4e60b1fe76fd63f5af768610ca9cd08e6070ba20ca2d0a93a3e42403f4be9c9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant4e60b1fe76fd63f5af768610ca9cd08e6070ba20ca2d0a93a3e42403f4be9c9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PseudoMetrizableSpace](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/pseudometrizablespace.md) | 33 | `declaration-track:505b5c771f8b244a8d23d9cf9a3d0f9f518f8372d999cd98f8c905d2eec03fc0` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 36 | `declaration-track:ee3ae66c6a3b2949cf105fd4da8e0cfc2e5959473d0e96d54046c182e3835f26` |
| 3 | `def` | [pseudoMetrizableSpacePseudoMetric](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/pseudometrizablespacepseudometric.md) | 41 | `declaration-track:7a4ca53c711445a03e9697acd1238db1f9f0bac8178411794add8db70b5aca29` |
| 4 | `instance` | [pseudoMetrizableSpace_prod](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/pseudometrizablespace-prod.md) | 45 | `declaration-track:81ed22add87f1890502308e4253d596510fd79bdc987dbaa473dbb08e1fca20a` |
| 5 | `theorem` | [Metrizable Basic Namespaced](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/pseudometrizablespace-source-line-53-occurrence-2.md) | 53 | `result-track:6294f7110095f1fc9d817f0c3c3ef070acd8e9942c4ea70bf2e6fedff452bbda` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 62 | `declaration-track:2063b690df90b52c485d2e8d567657fd2e5a5f4f43cdf20fe50e1109586a44bf` |
| 7 | `instance` | [PseudoMetrizableSpace.subtype](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/pseudometrizablespace-subtype.md) | 69 | `declaration-track:9a6f08c15539d410e0243f146636bf6a75ee97179bb60d5211c7805dba3c311e` |
| 8 | `instance` | [pseudoMetrizableSpace_pi](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/pseudometrizablespace-pi.md) | 73 | `declaration-track:13327b5411ff2344c485d4c1d9db60b8ba5c3efb4e6a8c4527f97a4a1e4233a5` |
| 9 | `class` | [MetrizableSpace](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/metrizablespace.md) | 82 | `declaration-track:43adb91a0cf6b6ac832257588f47c6724326b19fc0a2849af01daf26826242d5` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/instance.md) | 85 | `declaration-track:10c101d97b11b948cb4f7042dcc2f07fde0eb5e6e69b69983462eb573fdf8f3e` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 89 | `declaration-track:10d4d925d1225aaecc037ef5cf060fc9395949a914978ada75dd7a24b1b85d5f` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 94 | `declaration-track:d6534eb6b9679cc77dce47b57ac0af910e8e2ef08e54a4bce1a62b82b098f76e` |
| 13 | `def` | [metrizableSpaceMetric](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/metrizablespacemetric.md) | 100 | `declaration-track:5cff1cbc98ba108c830f185c915d69b8d1790364b851c2b288e1ff76b9c970d1` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 104 | `declaration-track:5a1f7f1092b59342d8314d46ba3163224a3489895145644bf06d87a603041d29` |
| 15 | `instance` | [metrizableSpace_prod](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/metrizablespace-prod.md) | 108 | `declaration-track:93649ff3f12ab8b5946989bc845399c231ab9973219307ee301f0a176d3865ef` |
| 16 | `theorem` | [Metrizable Basic Namespaced](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/metrizablespace-source-line-115-occurrence-2.md) | 115 | `result-track:de0b7ad0f3490a2c093b47ec0f5d32f6bef4abdc52c50dbe56f2fa6a71bcb4a3` |
| 17 | `instance` | [MetrizableSpace.subtype](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/metrizablespace-subtype.md) | 123 | `declaration-track:434f0debe5af932608f0bb57a166cea26083996d619513aef6c5200baa3b2af2` |
| 18 | `instance` | [metrizableSpace_pi](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/metrizablespace-pi.md) | 126 | `declaration-track:63bd76c60b972fcb901bc2d76d298309700bafecefea7e270744710b10944a53` |
| 19 | `theorem` | [IsSeparable.secondCountableTopology](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/isseparable-secondcountabletopology.md) | 131 | `result-track:601e6b3fee31561437a934a3390d782d43af9184dfc8a7db6a2927ae53b9372a` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/MetrizableBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 137 | `declaration-track:a157b4711040b23ff54583021b8dd5d559c9765c743501fe0944f6445daf91d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d97e3c051c934b2149f4e1c72fbee981a209e1fe971365c6d662d1283792af07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant4e60b1fe76fd63f5af768610ca9cd08e6070ba20ca2d0a93a3e42403f4be9c9e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant4e60b1fe76fd63f5af768610ca9cd08e6070ba20ca2d0a93a3e42403f4be9c9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

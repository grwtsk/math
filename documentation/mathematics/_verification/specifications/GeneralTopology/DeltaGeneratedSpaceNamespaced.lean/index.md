# Verification target: Delta Generated Space Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a10a350e7e184ef78d37f44d48b4c5d06b028722",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a10a350e7e184ef78d37f44d48b4c5d06b028722`.

Source path: `GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopologicalSpace.deltaGenerated](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/topologicalspace-deltagenerated.md) | 40 | `declaration-track:20c9e0f0cd0e0ba79df88118dcaf74c754c693b030364304f0af3e1515fc3073` |
| 2 | `lemma` | [deltaGenerated_eq_coinduced](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/deltagenerated-eq-coinduced.md) | 44 | `result-track:f3677d42d91216b4a7d7afb921fcdd6f99becf472aa126562e00ec232854fee9` |
| 3 | `lemma` | [deltaGenerated_le](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/deltagenerated-le.md) | 49 | `result-track:66f3e64e8e7215e21fdb1fbf338896fe46476998a3d37100c0005705a709529b` |
| 4 | `lemma` | [isOpen_deltaGenerated_iff](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/isopen-deltagenerated-iff.md) | 54 | `result-track:bfe7c62036fcd0f8dc226d283bb859cadd8ea1d2729d2f29fd776adcea940b6a` |
| 5 | `lemma` | [continuous_euclidean_to_deltaGenerated](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/continuous-euclidean-to-deltagenerated.md) | 61 | `result-track:551b1f0d23b256ebee7f0c60aaca94723411716743d0f7a51a0c73c36773d23d` |
| 6 | `lemma` | [deltaGenerated_deltaGenerated_eq](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/deltagenerated-deltagenerated-eq.md) | 69 | `result-track:85b3a16d2b87ac7d701d2ccdc142b5854ddac3ceeab15b5987ded676968a37e8` |
| 7 | `class` | [DeltaGeneratedSpace](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/deltageneratedspace.md) | 80 | `declaration-track:61b6e885212438a360f76da36e3be02ace1e0443022f398fca312ee772b6721b` |
| 8 | `lemma` | [eq_deltaGenerated](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/eq-deltagenerated.md) | 83 | `result-track:657f8402e42c4c2a4908f540a62525853f3e1e9339fbe54500b23eec6285cee7` |
| 9 | `lemma` | [DeltaGeneratedSpace.isOpen_iff](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/deltageneratedspace-isopen-iff.md) | 88 | `result-track:9153c01cdf972e28562deb451a019a5e1dc914ada1399d2175f21cfce20879aa` |
| 10 | `lemma` | [DeltaGeneratedSpace.continuous_iff](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/deltageneratedspace-continuous-iff.md) | 94 | `result-track:53ccee981c96743c81e5142cca490ab58112929b74973ba0f99b7b868b0d100f` |
| 11 | `lemma` | [continuous_to_deltaGenerated](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/continuous-to-deltagenerated.md) | 102 | `result-track:5cbae52fdb4deb2d5f7dcd807797ef0b4a7bde70a7221fddb08c2d4f34d49794` |
| 12 | `lemma` | [deltaGeneratedSpace_deltaGenerated](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/deltageneratedspace-deltagenerated.md) | 107 | `result-track:489c008a369e4b99453bc54f907015de9fade62bc5a228b5afb456b2d7b70195` |
| 13 | `lemma` | [deltaGenerated_mono](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/deltagenerated-mono.md) | 111 | `result-track:2e4a8b2435317285ce75ea2f8a529d27f10abe96e82423bb382e36777fa4eb9d` |
| 14 | `def` | [of](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/of.md) | 120 | `declaration-track:8eb6fd092b6f919ee0806555e5ee87043b579a38c136c8f8389be45d8cf72de3` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/instance-source-edition-3.md) | 122 | `declaration-track:8912680ed3e5aecec4ddf6137b98fa7c9cef1e7a823e43ff7e4889aa2130f52f` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/instance-source-edition-4.md) | 124 | `declaration-track:c83501f9308630781fca317e03b7382ca38308da91c7cb93a71692250dc67628` |
| 17 | `def` | [counit](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/counit.md) | 128 | `declaration-track:7654a3f52916bbcc2251d280ef184156775406e7189f8f504bd8b07a0d5e0bfc` |
| 18 | `lemma` | [continuous_counit](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/continuous-counit.md) | 130 | `result-track:602e01b9cb823b9c8625d2aa161a511f4d7fe68363370005a063614a094d00f6` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/instance.md) | 134 | `declaration-track:446b6009ec9f56ab0b95ff4540f9e33af1d068aa74adbbc4c0398fa92e1e3ace` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/instance-source-edition-2.md) | 139 | `declaration-track:7edadea2f16f1e3e789d170d9e57f3009e92e5bd2224239cef26cc3fc3d4645c` |
| 21 | `lemma` | [DeltaGeneratedSpace.coinduced](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/deltageneratedspace-coinduced.md) | 147 | `result-track:161c90f77f973ee1edf61019c77eb4dd82b64b90d01918d2c0a68fe03a03a3d1` |
| 22 | `lemma` | [DeltaGeneratedSpace.iSup](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/deltageneratedspace-isup.md) | 153 | `result-track:99067681c5a732046fc4f5820d49d2955430ae810dd9838b1cc7b1864f63400b` |
| 23 | `lemma` | [DeltaGeneratedSpace.sup](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/deltageneratedspace-sup.md) | 159 | `result-track:d3bf28838eda294214992bab33e88f16433bd6be19395f71511873f5b30f9df7` |
| 24 | `lemma` | [Topology.IsQuotientMap.deltaGeneratedSpace](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/topology-isquotientmap-deltageneratedspace.md) | 166 | `result-track:217b69d763fc4ed60154c6217bc4ab87ce9f85d05207650b9569b76ebdb8dba9` |
| 25 | `instance` | [Quot.deltaGeneratedSpace](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/quot-deltageneratedspace.md) | 171 | `declaration-track:114c040ed6f62b52d702d139ddc29a0d327eadfb0b8ec98ebf8df2ef33b96e66` |
| 26 | `instance` | [Quotient.deltaGeneratedSpace](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/quotient-deltageneratedspace.md) | 176 | `declaration-track:02c800fa78ae2f537708a0070e91bd4cd8c9d86e7039eaf87fa5a3f7a87915ba` |
| 27 | `instance` | [Sum.deltaGeneratedSpace](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/sum-deltageneratedspace.md) | 181 | `declaration-track:1c184c2f93cd3bb68a78ce55ef5049a65f4da459a9f424d5c52556071f34da5a` |
| 28 | `instance` | [Sigma.deltaGeneratedSpace](../../../../GeneralTopology/DeltaGeneratedSpaceNamespaced.lean/declarations/sigma-deltageneratedspace.md) | 186 | `declaration-track:b198fdfdd07e11bf38f5f3f09c2f5df38e6876c4524d2fa6762ace02673df8c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f3275a748a24733115aaf92ecee91cdb5395948be8d3aa48850d11901cc259d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

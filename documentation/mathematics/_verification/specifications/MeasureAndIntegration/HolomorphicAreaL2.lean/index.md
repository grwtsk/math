# Verification target: GRWTSK.Analysis.Complex.HolomorphicAreaL2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d4d0ddbee8a30501e4fba95c5cf785bcf8b4338",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicAreaL2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d4d0ddbee8a30501e4fba95c5cf785bcf8b4338`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicAreaL2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicAreaL2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicAreaReproducing`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicAreaReproducing.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [realizedValue](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/realizedvalue.md) | 42 | `declaration-track:105083d224f6a7276c72a09cda9e64564f81fdc48f5068a6417a55ba82f2af26` |
| 2 | `def` | [realizedFinite](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/realizedfinite.md) | 46 | `declaration-track:562e4d7ea48481cc9769495ff8dc08f466e56e4dfc90f087e52f46f8536ad7c7` |
| 3 | `theorem` | [realized_square_integrable](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/realized-square-integrable.md) | 50 | `result-track:4ec290d3e3363f50ada346577a4a43370d290c0ba16e946a4c9e91b6f27f6747` |
| 4 | `theorem` | [realized_pair_integrable](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/realized-pair-integrable.md) | 59 | `result-track:2188cfc50cf0b09aa3a16a4110e5c8b109c56990ea9b55f51eec302f83dbc6ea` |
| 5 | `theorem` | [completed_inner_integral](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/completed-inner-integral.md) | 70 | `result-track:984dadf652b336a8fff12a0ed258a48723dd054c032523a8c8c81df3f71db08e` |
| 6 | `theorem` | [realizedValue_add](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/realizedvalue-add.md) | 85 | `result-track:cd93fda9c74786341389683cb5b084163ccdda6ea5d4bc7cd358854c1b813d51` |
| 7 | `theorem` | [realizedValue_smul](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/realizedvalue-smul.md) | 90 | `result-track:4bf94938ecec97bbe0319778e44fc7b5ff55b388c8d2692a2b04d861f9bdbbc1` |
| 8 | `theorem` | [realized_memLp](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/realized-memlp.md) | 96 | `result-track:a1b25a4c29acca5231158d7430dc8f50e1b90a50226ff9138463175cb2ec89cd` |
| 9 | `def` | [toL2](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/tol2.md) | 103 | `declaration-track:2886596c0936dc8d7a59bc2bf50e9a7eeaa7758b0cc2b60f540bfd054cff145c` |
| 10 | `theorem` | [toL2_ae](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/tol2-ae.md) | 107 | `result-track:3dc0b677af0e116c13069504d22268e340782dd85a7530886b6fe5d0acb12990` |
| 11 | `theorem` | [toL2_add](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/tol2-add.md) | 111 | `result-track:2a78770c48ab74998813ae3e485399f7c275ca9a9bd8a73f9e93d19b26df6ba2` |
| 12 | `theorem` | [toL2_smul](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/tol2-smul.md) | 122 | `result-track:115de5b1c9e17ff1ba9dd3635fc7d12ce1f2741d65a5ebce239026071966a53e` |
| 13 | `theorem` | [toL2_inner](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/tol2-inner.md) | 134 | `result-track:846afb77eeef6b925ad38121c4a2d37e6958f7b5bc2ac12dd9291f16fae04665` |
| 14 | `theorem` | [toL2_norm](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/tol2-norm.md) | 142 | `result-track:416ce4d59f4243b103dad8c3ab46123bff429ce73f44d070b60b8f2cc91dee59` |
| 15 | `def` | [l2Embedding](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/l2embedding.md) | 151 | `declaration-track:3a59c3b6002d833d3ebb8675dc48d1b6968675b775e236f73ac50da8906bc6ea` |
| 16 | `theorem` | [l2Embedding_apply](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/l2embedding-apply.md) | 159 | `result-track:9e542c01e0d6d09a09715bc81bd5455909c7cb64ff34137920ab8236972189bd` |
| 17 | `def` | [originalL2Embedding](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/originall2embedding.md) | 163 | `declaration-track:b4c22382c83bb2a31797cceba7cc7737dd930972471e7a99069388b793b1d950` |
| 18 | `theorem` | [originalL2Embedding_range](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/originall2embedding-range.md) | 167 | `result-track:2b099d81330b86afc9c3cb2b8db8ccd64ec687c82e87327802daeec307835088` |
| 19 | `def` | [holomorphicSubspace](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/holomorphicsubspace.md) | 178 | `declaration-track:cc5f5b377f70bc909a7123c78b89326a8500ae6fff20cbb795382a5f11b9fac4` |
| 20 | `theorem` | [holomorphicSubspace_closed](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/holomorphicsubspace-closed.md) | 182 | `result-track:27f03ac85d76de1ae3ea6f6099f3d5a2780fe8b5fcc4c4acc7532c6038249ac2` |
| 21 | `theorem` | [completedRealization_scalar_class](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/completedrealization-scalar-class.md) | 187 | `result-track:d14a987ed1f3bbbaa982ab115ade906618f29bbec34106a5c9ebad88efef6a81` |
| 22 | `theorem` | [mem_holomorphicSubspace_iff](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/mem-holomorphicsubspace-iff.md) | 198 | `result-track:fc24b9bc24eb4ddfcc360f1150915ccc1ebac042da9b3f54f83184b050a09194` |
| 23 | `theorem` | [l2Embedding_multiplier_ae](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/l2embedding-multiplier-ae.md) | 217 | `result-track:22e617cb950aa090d4447a6422834aa31aebc99abcfea0e45ccbc42dbaae2bef` |
| 24 | `theorem` | [kernel_integrand_eq](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/kernel-integrand-eq.md) | 234 | `result-track:5f1a8682c70a7f812e37241fb13de0694ac5993fedf78ac9e49b75f0fc37e51f` |
| 25 | `theorem` | [kernel_integrable](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/kernel-integrable.md) | 243 | `result-track:ecdb43d13d429f05125fcb60a6943afe609c4dafe35624bd6f3f1689bc6b043d` |
| 26 | `theorem` | [integral_reproduces](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/integral-reproduces.md) | 250 | `result-track:2d51b79b59ee72adcb91d8972d9dd5d35f0c8ba899981c5eb6021e3d039d7e96` |
| 27 | `theorem` | [integral_reproduces_holomorphic](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/integral-reproduces-holomorphic.md) | 258 | `result-track:7dc4f3c1189af19d7c12d968f26750dd4cd02f4dba549d362104d8aac3b933be` |
| 28 | `theorem` | [spike_memLp](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/spike-memlp.md) | 277 | `result-track:637ee96f5db3b2ecda221bab3f3102a83ab936095975568b49759d3dafc5227b` |
| 29 | `def` | [spikeClass](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/spikeclass.md) | 280 | `declaration-track:8a6d101c69600f902e99bcd9444ba61cc1a02c77333f7a5a208433126fc472f4` |
| 30 | `theorem` | [spikeClass_zero](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/spikeclass-zero.md) | 282 | `result-track:782ce62ace23d314069e60ccde9fe1c7dfb547348aab5a33f76dbb4eb65399d3` |
| 31 | `theorem` | [spikeClass_mem](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/spikeclass-mem.md) | 287 | `result-track:cdf5a2a311ef0cf0c9a1d09c4f821b4ed3a14d602d073df3ed810ec4fa911fa1` |
| 32 | `theorem` | [no_allL2_point_recovery](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/declarations/no-alll2-point-recovery.md) | 292 | `result-track:cc1ce8ada8bffeb07ec57f0779b0352bc0e16c87b3be1a68df27bb1de4bdd2f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b7f378435a88ffdd5b694f08cb663d81f17fd539cb9d2431b0f2ae22b30a976 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/HolomorphicAreaL2.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/HolomorphicAreaL2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Tensor Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56328c76c83766175dc7afa19cb2d85d9e4d6f4a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Tensor/Variant921f470d1028f531259d6b9fe2d04c18d09ce6d6954ed74f1985517cc6ae38fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/TensorNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/TensorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56328c76c83766175dc7afa19cb2d85d9e4d6f4a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Tensor/Variant921f470d1028f531259d6b9fe2d04c18d09ce6d6954ed74f1985517cc6ae38fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Tensor/Variant921f470d1028f531259d6b9fe2d04c18d09ce6d6954ed74f1985517cc6ae38fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.Grid` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralTensor](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/spectraltensor.md) | 29 | `declaration-track:88b5a9637ca8f3a0927184b5a241c5f3f7778edfc53b02e017343282115424d6` |
| 2 | `theorem` | [ext](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/ext.md) | 35 | `result-track:25e00377f5610447d94572c7e990324a03d0add9fafe56e9875706e58fb55326` |
| 3 | `def` | [zero](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/zero.md) | 47 | `declaration-track:c0c5f71313fad69af47bfd986f704225d19adcccf88c203822bca7fd8ef4540f` |
| 4 | `def` | [add](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/add.md) | 50 | `declaration-track:7e3260953ae9635eda213cf877d4436620f065fd84f6a5a5853001592a5e33b3` |
| 5 | `def` | [sub](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/sub.md) | 55 | `declaration-track:f6e8cbb59ad374b66ac7e337314de211a6c74ea88d9f470f66c1f4f207ae1015` |
| 6 | `def` | [smul](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/smul.md) | 60 | `declaration-track:d8edaca86b490f0c6bb35bc34f38cb9dd68d9ef9c7f3e53adb110a4b3680d1dc` |
| 7 | `def` | [constant](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/constant.md) | 66 | `declaration-track:d5766837e4d3c2003021ea2a30237f1b791fcdad2992bd0cbee94a7fe05927d5` |
| 8 | `def` | [mean](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/mean.md) | 71 | `declaration-track:d0da3e84476040c095057152e5807f286f3af89213b73d3558e1fd7b81a355e8` |
| 9 | `def` | [visibleRange01](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/visiblerange01.md) | 77 | `declaration-track:097155b8ed0ea4b78936856c60b0b9729c1209691847900a28b6259661c91626` |
| 10 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/instance-source-edition-3.md) | 82 | `declaration-track:7b11305b24b573df613692a11e4df79bc048d0c343226f2890519f08efaebef3` |
| 11 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/instance.md) | 85 | `declaration-track:078499ca3067264408436c7f0500f89d0e6cbb99f4f8c33287c0949b56529af8` |
| 12 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/instance-source-edition-4.md) | 88 | `declaration-track:8d2d75f5fc7c87686eebde6fdc9fb60baa761ff37ec3ff1ba41858dc9fce9b34` |
| 13 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/instance-source-edition-2.md) | 91 | `declaration-track:30db3a352d1e71aeeabd539b88e0943ae19e1098c0f60dc48a2b42d5d34bc1cd` |
| 14 | `theorem` | [value_zero](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/value-zero.md) | 95 | `result-track:c52ed1b5f176ed422722eed5c966b2d695261c4ae0aa379f23e34d3971f1f9e1` |
| 15 | `theorem` | [value_add](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/value-add.md) | 100 | `result-track:a60ac5b62c4fd0ffae1a95a15c70ac71f200d2e567ed5d9d3711994938cd13fc` |
| 16 | `theorem` | [value_sub](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/value-sub.md) | 108 | `result-track:72805a2173233cd363b61eba37bfb08808fced68ab74c618de0917eeda89d816` |
| 17 | `theorem` | [value_smul](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/value-smul.md) | 116 | `result-track:d493edffccfea53327c3d84b4ae806ff3db1a8bd6f98728c7eea8d8d125d51ba` |
| 18 | `theorem` | [value_constant](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/value-constant.md) | 125 | `result-track:1dd614e6d73b5594dcd3d4bc33c76f699934d9bd95dce040306d4f158cbcfb43` |
| 19 | `structure` | [DiracEigenDatum](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/diraceigendatum.md) | 140 | `declaration-track:e54880305f3ebd7bd1a48b55ca1d9fa06e3c678b32799ef811b619b77853cd8e` |
| 20 | `structure` | [DiracSpectrum](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/diracspectrum.md) | 153 | `declaration-track:3d2a08ee29ed10c96e4184a6779008362f082251b336bd5fa53b6d6c262274af` |
| 21 | `structure` | [DiracSpectrumObject](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/diracspectrumobject.md) | 169 | `declaration-track:2455ec083015d89ed3bb633170900ea4b5c4b04dad550fa4b6b77bc678f6d1d1` |
| 22 | `theorem` | [dirac_spectrum_self_adjoint_like](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/dirac-spectrum-self-adjoint-like.md) | 178 | `result-track:aa48806cc757b09dc8c459182a6db4cb6f27e3c08f518d4f2062e0d29b7d15df` |
| 23 | `theorem` | [dirac_spectrum_discrete](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/dirac-spectrum-discrete.md) | 183 | `result-track:d626ecb0742f29c3816c21deaf5117d83b1c5003fca8bd525771a3b11865f9f3` |
| 24 | `theorem` | [dirac_spectrum_compact_resolvent_like](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/dirac-spectrum-compact-resolvent-like.md) | 188 | `result-track:4355b48c73ff0f9d6e701c9bd6bb782bece4ede91501fde3e6ff1a6c6a3fbf5b` |
| 25 | `theorem` | [dirac_spectrum_object_is_categorical](../../../../FunctionalAnalysis/TensorNamespaced.lean/declarations/dirac-spectrum-object-is-categorical.md) | 193 | `result-track:3b54e8a84778938ff12a07968e9e2a6903de28417823e57fd308911c32acc837` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=466aec6c731e7acda89f2e10375ceb38be65d713f878165f1dfbe2ebb2bce41b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Tensor/Variant921f470d1028f531259d6b9fe2d04c18d09ce6d6954ed74f1985517cc6ae38fb.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Tensor/Variant921f470d1028f531259d6b9fe2d04c18d09ce6d6954ed74f1985517cc6ae38fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

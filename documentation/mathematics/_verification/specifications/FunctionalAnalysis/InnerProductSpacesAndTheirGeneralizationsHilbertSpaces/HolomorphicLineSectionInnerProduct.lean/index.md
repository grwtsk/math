# Verification target: GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af29b543f7985cd7948ee77c96a4b814819f7c3f",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicLineSectionInnerProduct.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af29b543f7985cd7948ee77c96a4b814819f7c3f`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicLineSectionInnerProduct.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicLineSectionInnerProduct.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineSectionPairing`](../../../../../MeasureAndIntegration/HolomorphicLineSectionPairing.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [quotientAddCommGroup](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/quotientaddcommgroup.md) | 33 | `declaration-track:44eb17843086f2e5e084bcf35f4a8529f8f511500c116ec52d473659789fce03` |
| 2 | `instance` | [quotientModule](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/quotientmodule.md) | 47 | `declaration-track:6dfdd560b6f5d59ca6e932bfcd17f7338a8c76515b8737d7cce0e229ceb0cc17` |
| 3 | `def` | [quotientInnerCore](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/quotientinnercore.md) | 58 | `declaration-track:1c0a6436ffadc201dac46dfe363765046849b6ce09414d4c97f8cfad0e0865c8` |
| 4 | `instance` | [quotientNormedAddCommGroup](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/quotientnormedaddcommgroup.md) | 68 | `declaration-track:cd7e605c3d295fb2b13958e52385119aa3d7206a362850c92666cd0dff7d090b` |
| 5 | `instance` | [quotientInnerProductSpace](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/quotientinnerproductspace.md) | 73 | `declaration-track:d6c6969ec5a0243e8198291e50638ab30b0c88587112f5151deb376a3233a041` |
| 6 | `theorem` | [zero_eq_operation](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/zero-eq-operation.md) | 77 | `result-track:466ce06f958632599210de1a2a2b19062de3e449a941987cb0d774982bb8fa4f` |
| 7 | `theorem` | [add_eq_operation](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/add-eq-operation.md) | 80 | `result-track:7b31010581e61f8470607f85603d372649c039e6d7783971f4a940d179980e3d` |
| 8 | `theorem` | [neg_eq_operation](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/neg-eq-operation.md) | 84 | `result-track:f1e26032125998e8ad355e6162d897407320ed4cd2e9baa9d62dce000b5b93c9` |
| 9 | `theorem` | [smul_eq_operation](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/smul-eq-operation.md) | 88 | `result-track:602d929b12f0a9802cfd00b5389b08953240c528c31fb2e3a01f3ef37c24188b` |
| 10 | `theorem` | [sub_eq_operations](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/sub-eq-operations.md) | 92 | `result-track:bac569d737c6d011f444bae1c000b16f2626fdcba56b0d111d5b858f95185a87` |
| 11 | `theorem` | [inner_eq_pairing](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/inner-eq-pairing.md) | 96 | `result-track:1cd154dcc9edbe7e4d83d24050214e50e94b5f7dc74efee42be969866622a5cc` |
| 12 | `theorem` | [inner_classOf](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/inner-classof.md) | 100 | `result-track:1c570b2a5e494ee0f81c738dcd23b14a5f18badeea42ce0b7e9838b98d1ea1df` |
| 13 | `theorem` | [norm_eq_sqrt_energy](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/norm-eq-sqrt-energy.md) | 106 | `result-track:08c4246b8a3f0094f0dc2a14252ccbcb0ee6d88daef6f5e0b56a833e0d4791ba` |
| 14 | `theorem` | [norm_sq_eq_energy](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/norm-sq-eq-energy.md) | 112 | `result-track:38fffa5e77618136510688d42da3aa82bae9ae8b4716070bdeb2f2e5eba0e5b5` |
| 15 | `theorem` | [ofReal_norm_sq_eq_energy](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/ofreal-norm-sq-eq-energy.md) | 118 | `result-track:4234061421d918f8fd177c3732c5308a2ff879e8a25d7915abd112fa09218d44` |
| 16 | `theorem` | [norm_eq_zero_iff_class](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/norm-eq-zero-iff-class.md) | 124 | `result-track:77cffe8f1bb4dccf59aa061244f0fc8238551c399dc07c6b31d3dc0fa266fe08` |
| 17 | `theorem` | [norm_classOf](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/norm-classof.md) | 128 | `result-track:7f55b6b1f8b6d8385a007d6c191d7d177692ba696306c26232c3eab350f2329f` |
| 18 | `theorem` | [pairing_norm_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/pairing-norm-le.md) | 133 | `result-track:454feadff56d48e737b12267d3592fd276cd21cd077b248472c92c167eabc56e` |
| 19 | `theorem` | [pairing_norm_le_energy](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/pairing-norm-le-energy.md) | 138 | `result-track:a7f88a0f31a7e4b1bf37d08653ecd0dff49c7e635847715ba4cfbe4156066f0f` |
| 20 | `theorem` | [norm_add_le_sections](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/norm-add-le-sections.md) | 145 | `result-track:26dcc6527fc36ad6965625d36fab447e9444ea1ec9f05656060406aadf5ff4c2` |
| 21 | `theorem` | [norm_smul_sections](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/norm-smul-sections.md) | 149 | `result-track:70a680eecde14e8900b66a18fb203fbe9ef2642f49cd267bbf477937261cc02e` |
| 22 | `theorem` | [dist_eq_sqrt_energy_sub](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/dist-eq-sqrt-energy-sub.md) | 154 | `result-track:617de225c91a07b6e9d3eba2620d440f4626cedc144bfb62497cd4d4791d5e49` |
| 23 | `def` | [gaugeLinearEquiv](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/gaugelinearequiv.md) | 160 | `declaration-track:fdc6a47172ab209cda53245fa5860db9f784ff4d0af9b9e8a3fe3548548ab7a0` |
| 24 | `def` | [gaugeLinearIsometryEquiv](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/gaugelinearisometryequiv.md) | 168 | `declaration-track:ffd23af942a79d7856276914da9fe8e0b754b33a640dbd37c3b3579a3c7777a4` |
| 25 | `theorem` | [gaugeLinearIsometryEquiv_apply](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/gaugelinearisometryequiv-apply.md) | 177 | `result-track:64e46fe9d4db380fe6254a512c0b0d35da153984b4bfbfaaa27b9bceac905725` |
| 26 | `theorem` | [gaugeLinearIsometryEquiv_symm_apply](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/gaugelinearisometryequiv-symm-apply.md) | 181 | `result-track:896067a9cc414fe1cf711596d05d418563355c488af17d0817d278485b4f3153` |
| 27 | `theorem` | [gaugeLinearIsometryEquiv_inner](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/gaugelinearisometryequiv-inner.md) | 187 | `result-track:06bcd7e5c1c9debc06c6bbaa5f623399d98bdf6ac7205602c1f7de1bc0db6f8a` |
| 28 | `theorem` | [gaugeLinearIsometryEquiv_isometry](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/gaugelinearisometryequiv-isometry.md) | 193 | `result-track:b447693a7d0ded5bc74e5bf97bb07f517c6e91a03f0332cae85194e09f55f9ad` |
| 29 | `theorem` | [zeroMeasure_eq_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/zeromeasure-eq-zero.md) | 199 | `result-track:ce0926d5fd19b3486ab276f92bb55576214a57037ee93316f9e4374454e3394d` |
| 30 | `theorem` | [equal_norm_distinct_classes](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/equal-norm-distinct-classes.md) | 214 | `result-track:841f1cb555f36244b331b4bbbdadf645b4edaaf951614362e54f265f2039cafe` |
| 31 | `theorem` | [bundled_imaginary_pairing](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/bundled-imaginary-pairing.md) | 228 | `result-track:575562bbe3ff97fd961615e9d63244eb9f0fbe8288f1c89471250bfa7c4addb4` |
| 32 | `theorem` | [bundled_reversed_imaginary_pairing](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/declarations/bundled-reversed-imaginary-pairing.md) | 236 | `result-track:7d703194fafb706005e33a7325140c02fade405d50b22e7f78284fea48b58e1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=724608b1b2addc45ea703c69d9613e2bd42b3fa60131d9e4becaf70d3e4c7fd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/HolomorphicLineSectionInnerProduct.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/HolomorphicLineSectionInnerProduct.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

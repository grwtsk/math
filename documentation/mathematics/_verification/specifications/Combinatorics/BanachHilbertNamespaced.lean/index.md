# Verification target: Banach Hilbert Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e65414aa5b98c2b24e0235b76991636dc46a77a",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/BanachHilbertNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/BanachHilbertNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e65414aa5b98c2b24e0235b76991636dc46a77a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.CyclicCubical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [StableBitfield](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/stablebitfield.md) | 31 | `declaration-track:d3685e179ef130544ebab9451d372cfa76e336d2557c87648a93d5904082cfaf` |
| 2 | `def` | [realize](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/realize.md) | 34 | `declaration-track:f0ed0ac5cee62c9ffb73f0d5197167d39c19a17f4a190fae5fe0fd6def2b1dbb` |
| 3 | `def` | [hammingCount](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/hammingcount.md) | 38 | `declaration-track:ae649db37af1854b4e1309758851fc268f0b810f50938c5da645faab68da3841` |
| 4 | `def` | [hammingReal](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/hammingreal.md) | 42 | `declaration-track:d65fe83434d1c96458e9635ee377e5eb66f8807e278a0048d4ad7aebc8854f00` |
| 5 | `def` | [manhattanDistance](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/manhattandistance.md) | 46 | `declaration-track:f8ddd1a8f08e76cca015e985b106af92bebe9ee1800b3a4152a84b4c85c2265d` |
| 6 | `def` | [hilbertDistanceSq](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/hilbertdistancesq.md) | 50 | `declaration-track:80e9e5a210a014a8d81c2c4303b8f475f290d09b5a3c4fa9a886fe39d2843017` |
| 7 | `theorem` | [hammingReal_eq_natCast](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/hammingreal-eq-natcast.md) | 54 | `result-track:27d7150d47d2e575a07d001f84abeb0f8020ae63d1804db2a0250fa832124150` |
| 8 | `theorem` | [abs_realize_sub](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/abs-realize-sub.md) | 59 | `result-track:6e5fb670862cb8c0a794e4fb3b16735226707f6d4f86b388826a46f41cd0394d` |
| 9 | `theorem` | [sq_realize_sub](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/sq-realize-sub.md) | 64 | `result-track:1e42be66dc9a630b6301e06522cc1e089d4166003d56b96e1d69944c3c420255` |
| 10 | `theorem` | [manhattanDistance_eq_hamming](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/manhattandistance-eq-hamming.md) | 71 | `result-track:5cf29a6683dd2018f0276b3b52f1ace4c187e2d2461c9770f482d07a901b5b92` |
| 11 | `theorem` | [hilbertDistanceSq_eq_hamming](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/hilbertdistancesq-eq-hamming.md) | 79 | `result-track:d2c9a43441636c8776e956f69319b18a8a254912f2d116f073f55aef3ec4904d` |
| 12 | `theorem` | [manhattanDistance_eq_hilbertDistanceSq](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/manhattandistance-eq-hilbertdistancesq.md) | 87 | `result-track:c529ad3e889d0d142c2ec29e9b187419e2c9b0a922f17eebbaa8d28d04aac684` |
| 13 | `def` | [IsNearestBit](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/isnearestbit.md) | 93 | `declaration-track:d5cf83106a052ee3211ecb31b090b9148dee1ef640115d58213883195b46a88f` |
| 14 | `def` | [IsAnchor](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/isanchor.md) | 97 | `declaration-track:d8a291d98a9f38475d813bc555f0da933fb5a207a8a02e39445281dbd030631e` |
| 15 | `def` | [squaredPointCost](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/squaredpointcost.md) | 101 | `declaration-track:e286baeefd690135de160469c39809b1af429d3a24195ea98fc48c2c85674852` |
| 16 | `def` | [IsSquaredNearest](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/issquarednearest.md) | 106 | `declaration-track:62fa09f678b5e032db7aff0c0248a075d0394c6600d039625847ee7f2859a4ef` |
| 17 | `theorem` | [nearestBit_cost_le](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/nearestbit-cost-le.md) | 110 | `result-track:fe2669b6571ea9de70985e7e00fd8860abbb719ecaf6783b97d436c97b74c31e` |
| 18 | `theorem` | [isSquaredNearest_of_isAnchor](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/issquarednearest-of-isanchor.md) | 117 | `result-track:9e5d141cf134ea28c166dbc15e95a7fb3fd08022a462827afd7bc61fad3d546a` |
| 19 | `def` | [flipAt](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/flipat.md) | 127 | `declaration-track:aa641a86f6c96177a5e2ddf78803dcb03bcff28ef042229377bead759816ac40` |
| 20 | `theorem` | [isAnchor_of_isSquaredNearest](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/isanchor-of-issquarednearest.md) | 134 | `result-track:c020e152da854d92dbace38906b54d01f08ceef6c072d0a106d0408b9e182aed` |
| 21 | `theorem` | [isAnchor_iff_isSquaredNearest](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/isanchor-iff-issquarednearest.md) | 169 | `result-track:d758534508adba1870accaa06e81fec92c35e596950d25450ec613e515c068f2` |
| 22 | `def` | [lpPowerPointCost](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/lppowerpointcost.md) | 176 | `declaration-track:8c039929313b5929b9bdce542538a6ee2aaea31fae564ba6069d209bdefb94f5` |
| 23 | `def` | [IsLpNearest](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/islpnearest.md) | 181 | `declaration-track:19ef57a4c6405d8928650c8e5d5acf278052161dfcea3b5a0d47d530d67afa12` |
| 24 | `theorem` | [nearestBit_abs_cost_le](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/nearestbit-abs-cost-le.md) | 185 | `result-track:6ab2bcc006aa7ff9bbdc48f6c51f91fc1d9c32e00765dae4af5219c3bca6d2f5` |
| 25 | `theorem` | [isLpNearest_of_isAnchor](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/islpnearest-of-isanchor.md) | 201 | `result-track:49f25ce5b17fe7d89a3481150a9f84f58e6016d98d29727b262500bc33469ed8` |
| 26 | `theorem` | [isAnchor_of_isLpNearest](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/isanchor-of-islpnearest.md) | 214 | `result-track:c851b1f6fca04ea87df4da9348f680bea9e39d7a52f8fe82c79d6bc18aa80f95` |
| 27 | `theorem` | [isAnchor_iff_isLpNearest](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/isanchor-iff-islpnearest.md) | 259 | `result-track:afb99b8b5c2c82ce38dd9b6dcee5ca2e75ae2fbea060f95c9ada847d871dd9a3` |
| 28 | `def` | [chartNormSq](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/chartnormsq.md) | 266 | `declaration-track:516ad630b46d609f62550039356ae94211aebd4d79b1dc110a79caaf463f00d5` |
| 29 | `theorem` | [chartNormSq_nonneg](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/chartnormsq-nonneg.md) | 269 | `result-track:cdadbb92178636bc22b34c9d74f8d2bfc83aaed1d83f753a5cd1de462ab2471a` |
| 30 | `def` | [inverseStereographic](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/inversestereographic.md) | 274 | `declaration-track:1cbaa4a3ec9bce1792300c49e43e3ed7b3d6e813dcda857f91f2af8847daf929` |
| 31 | `def` | [carrierNormSq](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/carriernormsq.md) | 280 | `declaration-track:984962736c32fdd754554d015bcd90aa0ec75283db4554dedf82200fa36f3673` |
| 32 | `theorem` | [inverseStereographic_unit](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/inversestereographic-unit.md) | 284 | `result-track:322cad9653920bb657750df50265ff8dfd63464241f35eb8d31c3c257aead4a9` |
| 33 | `def` | [southPole](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/southpole.md) | 307 | `declaration-track:2594b0b6603154c34a0f747bccc30cc29d92796f97ff4507c2086d50da452fe7` |
| 34 | `def` | [northPole](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/northpole.md) | 308 | `declaration-track:4ada1db4604b5704bf5c647686e5e9e4dd2c54b202c60c7eb0430ce205553c20` |
| 35 | `theorem` | [inverseStereographic_zero](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/inversestereographic-zero.md) | 311 | `result-track:bc7cdd1b443d1bde12da35c6324e3e9631d33edee85bb1bfa108978a13e1d736` |
| 36 | `inductive` | [CompactifiedChart](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/compactifiedchart.md) | 316 | `declaration-track:2d05b945bfc5ee0e7084d03fb502cf60f55d1c70efd8bf3756b4d852e93808c1` |
| 37 | `def` | [compactifiedCarrier](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/compactifiedcarrier.md) | 321 | `declaration-track:bf8c87418fae333d69921ce421a8daa6af65e7c8898eb2b30250750973e71c81` |
| 38 | `theorem` | [compactifiedCarrier_finite](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/compactifiedcarrier-finite.md) | 327 | `result-track:5a48d3790906c82a037c3368954d066869acbd98be7da2fed12bad02ecb58a6f` |
| 39 | `theorem` | [compactifiedCarrier_infinity](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/compactifiedcarrier-infinity.md) | 331 | `result-track:c0e827795457a6d678dcf1325e7c4e27ce630eae73609403a6c61be88b411cb1` |
| 40 | `def` | [centeredInt](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/centeredint.md) | 336 | `declaration-track:e17dda580433f43597493245dd32183b74bb165b7adc0b0456cca699f2013ea3` |
| 41 | `def` | [sphereNumerator](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/spherenumerator.md) | 340 | `declaration-track:685e6d3a8d9ee848f655d544a984cc147c3bb7df4e61033a52e0d0beab89663c` |
| 42 | `def` | [sphereDenominator](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/spheredenominator.md) | 345 | `declaration-track:a695cd93e6f1455e76757d211779a6197d27871dea840f2ab8bd6be3aec9ed27` |
| 43 | `def` | [integerCarrierNormSq](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/integercarriernormsq.md) | 348 | `declaration-track:2bf557065ecd71bf8059a10c6546cf6192ba83b87201e87ec9f8b08239218d11` |
| 44 | `theorem` | [centeredInt_sq](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/centeredint-sq.md) | 351 | `result-track:f1e212601ac53ff7ad85beae98956e78870626ca0fc8ffbff537167e73e436a3` |
| 45 | `theorem` | [sphereNumerator_norm_certificate](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/spherenumerator-norm-certificate.md) | 356 | `result-track:caedc390789a4fc4c4c5f38dcbc2aeb64938b8819420a01a4066d15419f5968a` |
| 46 | `def` | [integerCarrierDistanceSq](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/integercarrierdistancesq.md) | 374 | `declaration-track:3367639165e1289d9049ab880df83dae401649db20efd38e8936d72e76a45a1c` |
| 47 | `theorem` | [centered_difference_sq](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/centered-difference-sq.md) | 378 | `result-track:bf4fc5d645aa0ed711a4d0c34bcb92a849cc3bf241e1722f42108e3fc8dec3c9` |
| 48 | `theorem` | [sphereNumerator_distance_certificate](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/spherenumerator-distance-certificate.md) | 386 | `result-track:cb1bd519c523a164fa94d622b9b8bfb3901f8157c1e8aded50b56602d2b19777` |
| 49 | `def` | [zeroBeacon](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/zerobeacon.md) | 405 | `declaration-track:0b227544c613c1093673fd73bc9755975bf3847c6680120b2aa7ecad92ef5c48` |
| 50 | `def` | [standardBeacon](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/standardbeacon.md) | 408 | `declaration-track:98edcc9d6225b0d5905edf59156c477177cdf05a1239199a51ee3ae58e8a76e3` |
| 51 | `def` | [squaredRange](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/squaredrange.md) | 412 | `declaration-track:68ec812409b73d3673731a9820ac84fe2e3851ec0fae5d76f0c916415ebc98d4` |
| 52 | `theorem` | [squaredRange_zero](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/squaredrange-zero.md) | 416 | `result-track:ada3051bedaa6bd60cd7cc8dc0447415d51765b4c81c11e9f34ef19154eae441` |
| 53 | `theorem` | [squaredRange_standard](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/squaredrange-standard.md) | 420 | `result-track:f25c0f5cb3cad3ffb3ca6fd95561d22dc7f4593bad046b623b9147e306b5d5c0` |
| 54 | `theorem` | [reconstruct_coordinate_from_ranges](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/reconstruct-coordinate-from-ranges.md) | 440 | `result-track:6930c9b35ea773e2cd26e0c7cab2d6bb7f0c33447ab473634ab254f6b98807ef` |
| 55 | `def` | [rangeRate](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/rangerate.md) | 449 | `declaration-track:b589e2f82d2ff605bb687e40014444418f51a98c4d2da9db4db5e4a300fa9646` |
| 56 | `theorem` | [rangeRate_zero_sub_standard](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/rangerate-zero-sub-standard.md) | 453 | `result-track:b4905da8f36a714c163cbaaf56930e6f00eb7b7e5bfdfdee866810abf7301b3f` |
| 57 | `theorem` | [reconstruct_velocity_from_rangeRates](../../../../Combinatorics/BanachHilbertNamespaced.lean/declarations/reconstruct-velocity-from-rangerates.md) | 470 | `result-track:3926d3600bcbe3f9a581f2bd75365a4ee5e496c1dd9a8c02cb1a53286c6e9f8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dc26b4e48582b6e1ae428f04e14cfbb8a5c7d1642c89a7f7d0b92359f7d13f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

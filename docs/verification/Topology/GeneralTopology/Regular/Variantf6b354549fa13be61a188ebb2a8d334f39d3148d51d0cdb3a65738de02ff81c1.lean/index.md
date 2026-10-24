# Verification target: GRWTSK.Topology.GeneralTopology.Regular.Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b`.

Source path: `GRWTSK/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InnerRegular](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/innerregular--f9558de3d45742ec3be7396a.md) | 144 | `declaration-track:f9558de3d45742ec3be7396a5fd75ac2f425b47c8a4f0bc3903c2655db817f20` |
| 2 | `theorem` | [measure_eq_iSup](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/measure-eq-isup--683da3b5426cafcc089b18cb.md) | 153 | `result-track:683da3b5426cafcc089b18cb71bf57a5032a6091b08538ed0a9ce67c40f1d707` |
| 3 | `theorem` | [exists_subset_lt_add](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/exists-subset-lt-add--3195107a4ddb5e8e7deff9b1.md) | 160 | `result-track:3195107a4ddb5e8e7deff9b15f96f9100a4a3e76fee73a8bac7725e94bba2507` |
| 4 | `theorem` | [map](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/map--e4be6601229faa8cfcba43ce.md) | 169 | `result-track:e4be6601229faa8cfcba43ce961aaab3deadc9d30a97226e948145e62506fdc7` |
| 5 | `theorem` | [smul](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/smul--ea5513d1361571831add4d15.md) | 181 | `result-track:ea5513d1361571831add4d156507e1d8f8eeda51f0338790993b7cb1e40a54a7` |
| 6 | `theorem` | [trans](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/trans--34cd1b67391b4bb52538903f.md) | 187 | `result-track:34cd1b67391b4bb52538903f607bb0364b01198daab8e637ab1264097e76d256` |
| 7 | `class` | [OuterRegular](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/outerregular--b18de58e29c186c827887445.md) | 202 | `declaration-track:b18de58e29c186c8278874458597bf5762d9f297c9198d30b85465652207b280` |
| 8 | `class` | [Regular](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/regular--2b6300216198fcfceca218bb.md) | 213 | `declaration-track:2b6300216198fcfceca218bb1b1764b35f63e185946ce036e61fdc85d6f6c589` |
| 9 | `class` | [WeaklyRegular](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/weaklyregular--206ee745d3d6a9d29b68ad61.md) | 221 | `declaration-track:206ee745d3d6a9d29b68ad61cd855c68e4919a0b700dcae0b46ac6f8a06ffa18` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/instance--66287f4f845f730443208311.md) | 228 | `declaration-track:66287f4f845f73044320831133ed91178a18757916152b8e72814774e9e0401b` |
| 11 | `instance` | [zero](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/zero--5dd56960196a0cac2334a229.md) | 236 | `declaration-track:5dd56960196a0cac2334a2293a6fa675fc6f46fa4c79799154f0aee06744b575` |
| 12 | `theorem` | [_root_.Set.exists_isOpen_lt_of_lt](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-set-exists-isopen-lt-of-lt--612c6901a85a7a5229d299c8.md) | 242 | `result-track:612c6901a85a7a5229d299c8eea8f043c476337449c70337ddae4f8834646bf8` |
| 13 | `theorem` | [_root_.Set.measure_eq_iInf_isOpen](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-set-measure-eq-iinf-isopen--b95f6fe9ae74b4e8b209ecdf.md) | 252 | `result-track:b95f6fe9ae74b4e8b209ecdf123cce4dece1ebc023b597065cdceafa6764e75e` |
| 14 | `theorem` | [_root_.Set.exists_isOpen_lt_add](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-set-exists-isopen-lt-add--a79b60b497db0aa9b023c954.md) | 259 | `result-track:a79b60b497db0aa9b023c954700bfed23e12ce4c0a07c760847edffd096c258a` |
| 15 | `theorem` | [_root_.Set.exists_isOpen_le_add](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-set-exists-isopen-le-add--bf5b9e5ed78052e29d321288.md) | 264 | `result-track:bf5b9e5ed78052e29d32128825d59a4b25b349f8134a12147c1e35180cb940da` |
| 16 | `theorem` | [_root_.MeasurableSet.exists_isOpen_diff_lt](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-measurableset-exists-isopen-diff-lt--4f86cbca24d09f6da9427902.md) | 272 | `result-track:4f86cbca24d09f6da94279028ff0f0b376b4c99a1690ce3b4c080840319054fb` |
| 17 | `theorem` | [map](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/map--60bcd00ea7ff5fe462d3e612.md) | 280 | `result-track:60bcd00ea7ff5fe462d3e612b9b87120e467cdc689318be66402bd6459df5db8` |
| 18 | `theorem` | [smul](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/smul--c82e1c6bef9a70c554ad6266.md) | 291 | `result-track:c82e1c6bef9a70c554ad6266e7f84616ac358512da10fe0e9fda88786b5dbdb3` |
| 19 | `theorem` | [FiniteSpanningSetsIn.outerRegular](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/finitespanningsetsin-outerregular--28e8700fc2d7bacc795ae5ac.md) | 305 | `result-track:28e8700fc2d7bacc795ae5ac6e1800c4a5a433cc45cbbcc6d87132301aa13405` |
| 20 | `theorem` | [measurableSet_of_open](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/measurableset-of-open--9bcf0b0e60fca97bdde15e33.md) | 348 | `result-track:9bcf0b0e60fca97bdde15e330c522f447b97ed5f27b22e118b3f2f6fea509872` |
| 21 | `theorem` | [weaklyRegular_of_finite](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/weaklyregular-of-finite--57734536e9d8c1dced3c0b2d.md) | 374 | `result-track:57734536e9d8c1dced3c0b2d933a618291c261547f2ed9253badfdda8da4d901` |
| 22 | `theorem` | [of_pseudoEMetricSpace](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/of-pseudoemetricspace--2dfc36a9d56078db7976b756.md) | 439 | `result-track:2dfc36a9d56078db7976b756269f5c7fda0e1ce5cc41de2fbe56d5b57dcc002e` |
| 23 | `theorem` | [isCompact_isClosed](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/iscompact-isclosed--8de4d1591186360214fcb306.md) | 449 | `result-track:8de4d1591186360214fcb3065b67b1c0604ad3b407a9e6a7dc5a7456f61b839d` |
| 24 | `instance` | [zero](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/zero--6fecd251021b3f74cf4bcbf1.md) | 467 | `declaration-track:6fecd251021b3f74cf4bcbf17339188a4f9119f6f18d937c367208d447f660d0` |
| 25 | `theorem` | [_root_.IsOpen.exists_lt_isCompact](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-isopen-exists-lt-iscompact--3b5f1985721bdf4c277e1537.md) | 472 | `result-track:3b5f1985721bdf4c277e15371d5e51150a57c73e96e6215697ca4574c55529d6` |
| 26 | `theorem` | [_root_.IsOpen.measure_eq_iSup_isCompact](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-isopen-measure-eq-isup-iscompact--28afa3be870d67eda13f16c6.md) | 478 | `result-track:28afa3be870d67eda13f16c63de6c953d6ccdc5e56fe8182764a16d19a0b4a33` |
| 27 | `theorem` | [exists_compact_not_null](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/exists-compact-not-null--baeb23db97e5836b6db1278e.md) | 483 | `result-track:baeb23db97e5836b6db1278e1944d4d327143f250ff668732db117ddc394a114` |
| 28 | `theorem` | [innerRegular_measurable](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/innerregular-measurable--12d27b1680aad21d320098d5.md) | 491 | `result-track:12d27b1680aad21d320098d537187aaf1f7a88cd122cde2b07a670aa4105874e` |
| 29 | `theorem` | [_root_.MeasurableSet.exists_isCompact_lt_add](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-measurableset-exists-iscompact-lt-add--97d72952bf57ae6942cdb6e7.md) | 498 | `result-track:97d72952bf57ae6942cdb6e7c2edfe10131edceaf29f0dff096994e6645bd680` |
| 30 | `theorem` | [_root_.MeasurableSet.exists_isCompact_diff_lt](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-measurableset-exists-iscompact-diff-lt--46cd99e5842a1713e6dc8784.md) | 506 | `result-track:46cd99e5842a1713e6dc8784376ee5b3a4eb4e070ec7c00f9bc0b6c58d289e33` |
| 31 | `theorem` | [_root_.MeasurableSet.exists_lt_isCompact_of_ne_top](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-measurableset-exists-lt-iscompact-of-ne-top--c701c3b45c6ab550c6bb4697.md) | 518 | `result-track:c701c3b45c6ab550c6bb469711f1093d6466dbc1092248acc80d158bd01fd58d` |
| 32 | `theorem` | [_root_.MeasurableSet.measure_eq_iSup_isCompact_of_ne_top](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-measurableset-measure-eq-isup-iscompact-of-ne-top--2e78cbd3a4ed6f8a62b142f9.md) | 526 | `result-track:2e78cbd3a4ed6f8a62b142f99f62094fe331e01ba6b692586532bf4de5e14baf` |
| 33 | `theorem` | [map](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/map--e31de932cd80a1fcdb7d56cc.md) | 531 | `result-track:e31de932cd80a1fcdb7d56cc34fac5897a26ab273b1b67e82f4506f2fabb007e` |
| 34 | `theorem` | [smul](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/smul--bf387683ea1394c5ad1c9ebe.md) | 541 | `result-track:bf387683ea1394c5ad1c9ebeaea653354e4f2c91cb376f6c6a42f0c1d77f1f43` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/instance--0635161bf104f9582f7e9bd4.md) | 549 | `declaration-track:0635161bf104f9582f7e9bd49ba9c05ba2b5cf0210700e8fb8ed7a9e842044dc` |
| 36 | `theorem` | [_root_.IsOpen.exists_lt_isClosed](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-isopen-exists-lt-isclosed--daf762d31f586b7217d2caef.md) | 561 | `result-track:daf762d31f586b7217d2caefc05ba778d83491082535d6e351b107ae96e80983` |
| 37 | `theorem` | [_root_.IsOpen.measure_eq_iSup_isClosed](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-isopen-measure-eq-isup-isclosed--938b6d71604ebe1101a50b6b.md) | 567 | `result-track:938b6d71604ebe1101a50b6b243c959ccf5fd5dcc737c0f6c4c4b8bc37b202e5` |
| 38 | `theorem` | [innerRegular_measurable](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/innerregular-measurable--324d3e3d23be3475cfcd6208.md) | 572 | `result-track:324d3e3d23be3475cfcd62087bb236a27e9e2403d46615d61af79169f6d6c1f8` |
| 39 | `theorem` | [_root_.MeasurableSet.exists_isClosed_lt_add](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-measurableset-exists-isclosed-lt-add--5a1f627f34d54075b91af2cf.md) | 580 | `result-track:5a1f627f34d54075b91af2cff734c65f612f202c482f25a3934749fc57de2938` |
| 40 | `theorem` | [_root_.MeasurableSet.exists_isClosed_diff_lt](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-measurableset-exists-isclosed-diff-lt--f9f1d17ead68313573fb5a96.md) | 586 | `result-track:f9f1d17ead68313573fb5a96f8deec84cd33d7dcc81d043320b929d1ef5a67ca` |
| 41 | `theorem` | [_root_.MeasurableSet.exists_lt_isClosed_of_ne_top](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-measurableset-exists-lt-isclosed-of-ne-top--e67208b75222a45efe2b2a63.md) | 598 | `result-track:e67208b75222a45efe2b2a63dc97cc674711fc04dda3181876cff16c17d25ec7` |
| 42 | `theorem` | [_root_.MeasurableSet.measure_eq_iSup_isClosed_of_ne_top](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/root-measurableset-measure-eq-isup-isclosed-of-ne-top--1a021e36b9eddbd6f8c83786.md) | 606 | `result-track:1a021e36b9eddbd6f8c837867a9ca6119190ae8d91bffee2d3b0350bcb389061` |
| 43 | `theorem` | [restrict_of_measurableSet](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/restrict-of-measurableset--c187cb750172e38d7d330972.md) | 613 | `result-track:c187cb750172e38d7d3309726d083cc38347328f4a15baf13b99b98d2e26b3d7` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/instance--4e9abf2d873ccc8d6c077ed9.md) | 628 | `declaration-track:4e9abf2d873ccc8d6c077ed93678ba51675fb14274231431daad67b51f62e0c4` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/instance--4c84267a95e542855eb401da.md) | 637 | `declaration-track:4c84267a95e542855eb401da2488b59644e059dc5cc633d9e6dc11d8fe067179` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/declarations/instance--238a688b79450c7eaf5878ce.md) | 653 | `declaration-track:238a688b79450c7eaf5878ce82f03159f860f2272e630c107d498139fa1cb9d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.Schnirelmann.Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d52dc79ce8e422d45375b4cf549ad7a7aa640db",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d52dc79ce8e422d45375b4cf549ad7a7aa640db`.

Source path: `GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schnirelmannDensity](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity--7c117afbb495f24a939786d6.md) | 49 | `declaration-track:7c117afbb495f24a939786d63935134b4be593bce8ee08b6ed2841d1ed3bc9e7` |
| 2 | `lemma` | [schnirelmannDensity_nonneg](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-nonneg--c4f04a7de27e5857ca4e9db0.md) | 56 | `result-track:c4f04a7de27e5857ca4e9db0ba408ea5a7efecab48fadfd8109c3e00ebfbb69a` |
| 3 | `lemma` | [schnirelmannDensity_le_div](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-le-div--86b5fd0ffc3d2a22e01a6056.md) | 59 | `result-track:86b5fd0ffc3d2a22e01a60564ede84432e5cc6fdb08e1c0fbd98be86e4e13be5` |
| 4 | `lemma` | [schnirelmannDensity_mul_le_card_filter](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-mul-le-card-filter--fd7f973f317a2565810fb034.md) | 67 | `result-track:fd7f973f317a2565810fb034a2ddb046358d40000e154432a8fdca16241ab39e` |
| 5 | `lemma` | [schnirelmannDensity_le_of_le](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-le-of-le--bd5fd36a98ade194e819d736.md) | 80 | `result-track:bd5fd36a98ade194e819d73611cf9ff011a80bd939780358ee384e050a6218a7` |
| 6 | `lemma` | [schnirelmannDensity_le_one](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-le-one--7897a2d45f340d28c50e82b6.md) | 84 | `result-track:7897a2d45f340d28c50e82b60fd8e58efdfb15ba4ade76ec45acb0affea2929b` |
| 7 | `lemma` | [schnirelmannDensity_le_of_notMem](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-le-of-notmem--5288bf582c7f9cc4d9ea5c93.md) | 91 | `result-track:5288bf582c7f9cc4d9ea5c931a7ec2ceac2d7661eb1eee8a988e51b9d5d84cc5` |
| 8 | `lemma` | [schnirelmannDensity_eq_zero_of_one_notMem](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-eq-zero-of-one-notmem--8629c6c074fcd9784a5c8d1b.md) | 107 | `result-track:8629c6c074fcd9784a5c8d1b40efe1b7e5afb11abeef58d6d55267b197efa60e` |
| 9 | `lemma` | [schnirelmannDensity_le_of_subset](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-le-of-subset--1a934461065152c575689a22.md) | 114 | `result-track:1a934461065152c575689a22d31cbcce14d86f14aefd747f201fa5c59d020e0d` |
| 10 | `lemma` | [schnirelmannDensity_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-eq-one-iff--ca4367fb64841bcfa22aa98a.md) | 120 | `result-track:ca4367fb64841bcfa22aa98a707c18c4272132631e3889172537c34f7c17c0da` |
| 11 | `lemma` | [schnirelmannDensity_eq_one_iff_of_zero_mem](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-eq-one-iff-of-zero-mem--0549670cf3e628e6f69cfab0.md) | 135 | `result-track:0549670cf3e628e6f69cfab001f1b2775cb38670155448b37d8c5b41b6433279` |
| 12 | `lemma` | [le_schnirelmannDensity_iff](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/le-schnirelmanndensity-iff--5aa34518e079bc66f0e468e8.md) | 146 | `result-track:5aa34518e079bc66f0e468e89a47497f2f6449b34943aaee49a67b88d75def4f` |
| 13 | `lemma` | [schnirelmannDensity_lt_iff](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-lt-iff--e2eb4e7ce9513df5648409c9.md) | 150 | `result-track:e2eb4e7ce9513df5648409c943e7103407b8a9d9d3ca1221c0d34bcc94e2ad9c` |
| 14 | `lemma` | [schnirelmannDensity_le_iff_forall](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-le-iff-forall--05cb545b222a6ac3cdcbaf5d.md) | 154 | `result-track:05cb545b222a6ac3cdcbaf5d4e639be0336b939af9bb9b1164b8d3cfb8dc2f3f` |
| 15 | `lemma` | [schnirelmannDensity_congr'](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-congr--5294553c7d00440ac3c95164.md) | 160 | `result-track:5294553c7d00440ac3c95164162c5697b56f62fdb73208865a440555487cfa17` |
| 16 | `lemma` | [schnirelmannDensity_insert_zero](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-insert-zero--28a87844d64c120958507cd1.md) | 165 | `result-track:28a87844d64c120958507cd1d2cebbe385ba20e76137b0acf3d19572d71d0dd1` |
| 17 | `lemma` | [schnirelmannDensity_diff_singleton_zero](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-diff-singleton-zero--defc7ec25a5489eb8034cef4.md) | 170 | `result-track:defc7ec25a5489eb8034cef40f76608f942ad764e4176689a00b862dee733663` |
| 18 | `lemma` | [schnirelmannDensity_congr](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-congr--c2f9ac2a06b87546c7efe58b.md) | 174 | `result-track:c2f9ac2a06b87546c7efe58b698cde305004e738463c99371b60f57d95e8c0cb` |
| 19 | `lemma` | [exists_of_schnirelmannDensity_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/exists-of-schnirelmanndensity-eq-zero--222c21a25de12e6998397802.md) | 183 | `result-track:222c21a25de12e69983978025f7bb4561147a1915acef178eafa3142c15d0cb7` |
| 20 | `lemma` | [schnirelmannDensity_empty](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-empty--c3c630c92674017918512bac.md) | 191 | `result-track:c3c630c92674017918512bac3fc9182bf0982cda53e03f6c7bf2b7fb40d1375c` |
| 21 | `lemma` | [schnirelmannDensity_finset](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-finset--3da4e8cd460daa80db733513.md) | 195 | `result-track:3da4e8cd460daa80db7335130927756ab7227828458c1480f262244338044bde` |
| 22 | `lemma` | [schnirelmannDensity_finite](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-finite--0fe19ccd30e38032d23d7663.md) | 209 | `result-track:0fe19ccd30e38032d23d7663ea0b5e1751570a483a2b754e333dbdffa63db1f9` |
| 23 | `lemma` | [schnirelmannDensity_univ](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-univ--4959389653eaec74a78190d2.md) | 212 | `result-track:4959389653eaec74a78190d21d3a0d7a4e1068acf6e5ad23c98deb831ffd127d` |
| 24 | `lemma` | [schnirelmannDensity_setOf_even](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-setof-even--f3c82bfc125d0f37f91640fb.md) | 215 | `result-track:f3c82bfc125d0f37f91640fb1c14b31b628f009ad169f86104c5e2043e0a6d58` |
| 25 | `lemma` | [schnirelmannDensity_setOf_prime](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-setof-prime--f969ef7f6c8103c606bfd3b3.md) | 218 | `result-track:f969ef7f6c8103c606bfd3b3c65422baed3fb14ca4b12b2a640c14a11b291be0` |
| 26 | `lemma` | [schnirelmannDensity_setOf_mod_eq_one](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-setof-mod-eq-one--18954d30bd6cc99cc25d9604.md) | 226 | `result-track:18954d30bd6cc99cc25d9604af8bdfa745cb76bb6c001bae47daadab63ce2fad` |
| 27 | `lemma` | [schnirelmannDensity_setOf_modeq_one](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-setof-modeq-one--b92b025b919364af9fb9e5c9.md) | 261 | `result-track:b92b025b919364af9fb9e5c921d855e1f5d524a3f0c93909e3c72670ec4c81dc` |
| 28 | `lemma` | [schnirelmannDensity_setOf_Odd](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variant7f6612424b282761c5e2c0122cd7a1cfe52cc046fc311d7381b8d3404f55b272.lean/declarations/schnirelmanndensity-setof-odd--9882302d582ec40bf1ff25f0.md) | 270 | `result-track:9882302d582ec40bf1ff25f06098f9284f5b4d3c1d506ef8b8aa942f54fb8d39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: Complete Lattice Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "491f5e04792ebf44d33d79f560625adfaf20332f",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant430dd22efc4d5cb84372c181fe2418307f965471071d0d780ed833f5fc8e3121.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `491f5e04792ebf44d33d79f560625adfaf20332f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant430dd22efc4d5cb84372c181fe2418307f965471071d0d780ed833f5fc8e3121.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant430dd22efc4d5cb84372c181fe2418307f965471071d0d780ed833f5fc8e3121.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [OrderDual.supSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/orderdual-supset.md) | 52 | `declaration-track:c141a4cccad0ec88c354b56350f504ca0f69db71e71b6fd090a192ee79abbf5e` |
| 2 | `class` | [CompleteSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/completesemilatticesup.md) | 60 | `declaration-track:700a63ccf1db876b903f6ce3f66020117e3a02d23931819b990879f1ca1c53a7` |
| 3 | `class` | [CompleteSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/completesemilatticeinf.md) | 70 | `declaration-track:2fa95178997039f65cff008c0d3a4827bea9dd55d8c55f13371fa601ab102e11` |
| 4 | `theorem` | [isLUB_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/islub-ssup.md) | 79 | `result-track:cc4a59b27c4374d6a3d66b2d9d8e9b4e032e00f36ed7c676c08d04cf48e10191` |
| 5 | `theorem` | [le_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/le-ssup.md) | 83 | `result-track:a3644b3f0aa582d8acac6b0b73f4d05e10d6d53aebeb41aeebe029c44210bf3e` |
| 6 | `theorem` | [sSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/ssup-le.md) | 87 | `result-track:91efda4211a5b72cd6c9264629a3c12808370a842d2318977ef2025d40c2950c` |
| 7 | `lemma` | [isLUB_iff_sSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/islub-iff-ssup-eq.md) | 91 | `result-track:a0395e5b433686c48df16f72450e8d8f28b50fce8f804d84d6d96f0ff9ac3faa` |
| 8 | `theorem` | [sSup_mem_upperBounds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/ssup-mem-upperbounds.md) | 98 | `result-track:f65cdf46828cce00922dfd62687dc05634eb90d107fa6f1e4dcba4b0b1826961` |
| 9 | `theorem` | [le_sSup_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/le-ssup-of-le.md) | 102 | `result-track:303029d6c05c01816aa5073904b9a431c45d5ee536d214ddfb0af70bca8fa875` |
| 10 | `theorem` | [sSup_le_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/ssup-le-ssup.md) | 106 | `result-track:f7d1e1cbd52fd8bc9c460f1f739d6b4ff7d59f4693d4dd18d95d68423b6f1040` |
| 11 | `theorem` | [sSup_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/ssup-le-iff.md) | 110 | `result-track:0a1be03bf19d8de06fb7277237072c602d6dec3922f0cb7d00e8175413e09bea` |
| 12 | `theorem` | [le_sSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/le-ssup-iff.md) | 114 | `result-track:6082ab0292779a338b543f376b7a655ac4577bce31cee49ac1b66ec033f0e955` |
| 13 | `theorem` | [le_iSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/le-isup-iff.md) | 118 | `result-track:fb772b4c3b0bed27c100db30c4416bfe20a766fa5029d4d359866561b5bc75a6` |
| 14 | `theorem` | [sSup_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/ssup-lt-iff.md) | 122 | `result-track:272e60be582f85bffee1c05ccaa36a25085c48f0f36b9eb943a8080a323e1289` |
| 15 | `theorem` | [iSup_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/isup-lt-iff.md) | 127 | `result-track:e192aa63b6355edf6fe00cd7b1f912c4d929f517e5cd90a085db042f691d168b` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/instance-source-edition-2.md) | 133 | `declaration-track:aa844ad13f38b40c16c426ca9e2204a0d4f1f6b846d5a44cb0b64b2420450007` |
| 17 | `class` | [CompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/completelattice.md) | 137 | `declaration-track:e57765b821f3a56d58e6ee5c4d08ea2423669bf99617b4696063819fd432ccc0` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/instance.md) | 147 | `declaration-track:453978e9e60adfc7bad352a1ee62a3fba0e32ae0d60a63cb6dfc7fdc0f6377d1` |
| 19 | `def` | [completeLatticeOfInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/completelatticeofinf.md) | 166 | `declaration-track:5ce335da68ecf7ad897cccb7cb41cb788e25a103f030ed839875db20b2a341c7` |
| 20 | `def` | [completeLatticeOfCompleteSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/completelatticeofcompletesemilatticeinf.md) | 193 | `declaration-track:8537f1828f8a7b667399c5f2575b8be256a7f957f33464e44f80d6d8987693e2` |
| 21 | `def` | [completeLatticeOfSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/completelatticeofsup.md) | 213 | `declaration-track:4ca7378cc04c32e9581612c84f4540f1e4956ee50c8a1668d3cc9e78f8e12353` |
| 22 | `def` | [completeLatticeOfCompleteSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/completelatticeofcompletesemilatticesup.md) | 238 | `declaration-track:8c7f41eff2b733218d5e5a850c4dbb62deba7bad6f140d78555f9e47cfec36a6` |
| 23 | `class` | [CompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/completelinearorder.md) | 245 | `declaration-track:d83b25e25406e7c0514d4c608d08bc090e1c749382129ef3a97d47b2d1f03f85` |
| 24 | `instance` | [CompleteLinearOrder.toLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/completelinearorder-tolinearorder.md) | 259 | `declaration-track:de108727a17a02c483193409fab5a6f54b0115c40bf2cc1a91e28fe0fca73788` |
| 25 | `instance` | [instCompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/instcompletelattice.md) | 272 | `declaration-track:b5ee2bd7c9532bc26f4f29255790f907bb7c0654730b8a5ca1e237961f04b77b` |
| 26 | `instance` | [instCompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/instcompletelinearorder.md) | 274 | `declaration-track:af31f7c4811aa2f8ca6c68523adb36f27bf7ee5723b3508df1764d9b73e308c8` |
| 27 | `theorem` | [toDual_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/todual-ssup.md) | 288 | `result-track:a584745b7900bc747292a44ea8928718df0f575cf309226029cfbc26b8dfbe8c` |
| 28 | `theorem` | [ofDual_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/ofdual-ssup.md) | 292 | `result-track:6d04d7ffa4e00a531a806cb37a7b688882b93bd7e34aa800b73e0e82f7503148` |
| 29 | `theorem` | [toDual_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/todual-isup.md) | 296 | `result-track:5bd8212b075ba0b4287f2cf0e5078a62768c28e8a4d9644beb3ed03b1a1a477e` |
| 30 | `theorem` | [ofDual_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/ofdual-isup.md) | 300 | `result-track:57dda3e91434314638412b60ede0ba2bfcac3a182853a12d309912760ade6b54` |
| 31 | `theorem` | [lt_sSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/lt-ssup-iff.md) | 310 | `result-track:e5c4bc4005b98455cf9a70ea03afe36b6a34e1ce0605a684670ad26f338b2c36` |
| 32 | `theorem` | [lt_iSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/lt-isup-iff.md) | 314 | `result-track:fd4565af8633fcded659a65b7ce585f4ec53655b53875ea3bc94391f4c29e398` |
| 33 | `theorem` | [le_sSup_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/le-ssup-iff-forall-lt.md) | 318 | `result-track:7b18fad2311e9ee48f1bade5617d47c3e808f813cd63fdabd1e2fd29d5e78df3` |
| 34 | `theorem` | [le_iSup_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/le-isup-iff-forall-lt.md) | 322 | `result-track:2b4b1add83ece07bad0be7366e0197a730004592c1e03021a6448add0e11d232` |
| 35 | `theorem` | [sSup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/ssup-eq-top.md) | 326 | `result-track:43d46d81f58e9bccdba28ded1c10dc2df6c187d1773e5b22ca9058e23e92bdaa` |
| 36 | `theorem` | [iSup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/isup-eq-top.md) | 330 | `result-track:e7715f008319b86298b99baa95432d566eedadd4260d8ce0cb474037dc47ff26` |
| 37 | `theorem` | [lt_biSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/lt-bisup-iff.md) | 334 | `result-track:3ba551079e23d9d9a99f83fc7682c741505630d20f7edc0aa46f9431b36e7443` |
| 38 | `abbrev` | [supSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/supset.md) | 346 | `declaration-track:0f001853d85127892cfb3b9c87373fb66ec06084f4858e6d3001d2be84398b66` |
| 39 | `lemma` | [supSet_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/supset-def.md) | 349 | `result-track:8ad886820b59ad2a627a23e58f5da5a2702a58719bfb0beb3b73482e44030a5a` |
| 40 | `abbrev` | [infSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/infset.md) | 354 | `declaration-track:2b5e25191eefa42abb949195b18a140da184f5c4ff90b35fba1641e5202140c4` |
| 41 | `lemma` | [infSet_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsPublic.lean/declarations/infset-def.md) | 357 | `result-track:f8a4d37f08486bca73f03c27ddf9e3a11e602064c31e08489c6d3bd9ce6284ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1a7643c16ee4a27ee9d04e85fc148c8b3be8df28207492b3ce805a3ba3a49aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant430dd22efc4d5cb84372c181fe2418307f965471071d0d780ed833f5fc8e3121.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant430dd22efc4d5cb84372c181fe2418307f965471071d0d780ed833f5fc8e3121.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

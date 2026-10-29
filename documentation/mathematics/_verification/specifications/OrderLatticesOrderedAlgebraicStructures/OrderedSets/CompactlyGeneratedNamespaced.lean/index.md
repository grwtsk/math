# Verification target: Compactly Generated Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef3b23833eaa1112fddcbe349c48444a3eeeb76d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompactlyGenerated/Variant040d9cd67cf1e67b60b454ae24c66f39d894352c50ceebedeb19bb471d8153d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef3b23833eaa1112fddcbe349c48444a3eeeb76d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompactlyGenerated/Variant040d9cd67cf1e67b60b454ae24c66f39d894352c50ceebedeb19bb471d8153d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompactlyGenerated/Variant040d9cd67cf1e67b60b454ae24c66f39d894352c50ceebedeb19bb471d8153d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Atoms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Set` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupIndep` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Zorn` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.OrderIso` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Set` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSupClosedCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/issupclosedcompact.md) | 71 | `declaration-track:6a6c46a836f02245a150fc1b2b803cdbc091edac73b1f0f6ec13b7cd48c26da2` |
| 2 | `def` | [IsSupFiniteCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/issupfinitecompact.md) | 77 | `declaration-track:d20187afbdff9c98ec386926a2a3e818da1ef5420070c7d1b0a2b2e03fac658a` |
| 3 | `def` | [IsCompactElement](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/iscompactelement.md) | 84 | `declaration-track:19ff93ac801dfdaa2bfa4f073506c270e21c70816056f48278984f15c6ff647b` |
| 4 | `theorem` | [isCompactElement_iff.](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/iscompactelement-iff.md) | 88 | `result-track:94858199c473635a52b12082ccbf3bbff9464a8af9d34cb97e55ddf63daf2c36` |
| 5 | `theorem` | [isCompactElement_iff_le_of_directed_sSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/iscompactelement-iff-le-of-directed-ssup-le.md) | 115 | `result-track:2b057a008843a54b2f02c35cd858d17b544d3f8c1849048c683203315a54f093` |
| 6 | `theorem` | [IsCompactElement.exists_finset_of_le_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/iscompactelement-exists-finset-of-le-isup.md) | 158 | `result-track:9ab2f01edd0769325392ef12d939a5a441842b7d428da2c7c284e46ea339bf69` |
| 7 | `theorem` | [IsCompactElement.directed_sSup_lt_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/iscompactelement-directed-ssup-lt-of-lt.md) | 180 | `result-track:a5a23bda38c2c2bae9c2a5102a094bba657c53096fa9d8b286cb25f418f5c93d` |
| 8 | `theorem` | [finset_sup_compact_of_compact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/finset-sup-compact-of-compact.md) | 192 | `result-track:c046f5bb1394c17b1448fd065d405fcf12e31284fb6966978c5bd90d1ec8dbaf` |
| 9 | `theorem` | [WellFounded.isSupFiniteCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/wellfounded-issupfinitecompact.md) | 208 | `result-track:a77253b80cefa72eedbfcc52bf139dddaa3a52c78b99813acee2503c77beacdc` |
| 10 | `theorem` | [IsSupFiniteCompact.isSupClosedCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/issupfinitecompact-issupclosedcompact.md) | 221 | `result-track:85813bb15279b878f01c44eb20b2c98a4e31bbef0899a1476b5ee97bc45d6771` |
| 11 | `theorem` | [IsSupClosedCompact.wellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/issupclosedcompact-wellfounded.md) | 233 | `result-track:e68bc3ea1142969104dc02234388f14fb1eeafed68d2d709ae7d3ce2e5e8ce4c` |
| 12 | `theorem` | [isSupFiniteCompact_iff_all_elements_compact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/issupfinitecompact-iff-all-elements-compact.md) | 254 | `result-track:ce2b6977b8a95628c83191bd485026eab0be6ec9bad9cfd8c73696779306f173` |
| 13 | `theorem` | [wellFounded_characterisations](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/wellfounded-characterisations.md) | 270 | `result-track:0ac143adece0f8d141e5299b67618c3a811883308b58276b0e1740265bcc7099` |
| 14 | `theorem` | [wellFounded_iff_isSupFiniteCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/wellfounded-iff-issupfinitecompact.md) | 284 | `result-track:b0ddee8ba0c614f184bf72537238e3e52d4c70bcfe987a554c1c8f88878ee3c7` |
| 15 | `theorem` | [isSupFiniteCompact_iff_isSupClosedCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/issupfinitecompact-iff-issupclosedcompact.md) | 289 | `result-track:4c97d1c1ba05283e12b95c5d17bd7d06bd394cd406981e75d8a10b97d137141e` |
| 16 | `theorem` | [isSupClosedCompact_iff_wellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/issupclosedcompact-iff-wellfounded.md) | 293 | `result-track:69417217b936abd5441f2f490944f3f39e4790a8904d9b7225ac491b6cded9ae` |
| 17 | `theorem` | [WellFounded.finite_of_setIndependent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/wellfounded-finite-of-setindependent.md) | 309 | `result-track:27fa240a4afb5dff0fef2395be79f194cd8ac3da124b7bd43173270953891a5c` |
| 18 | `theorem` | [WellFounded.finite_of_independent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/wellfounded-finite-of-independent.md) | 327 | `result-track:b2f8e20f09751f2939488e7e05e9d4123d6c035d7ab1b342902c5ac2f77e948c` |
| 19 | `class` | [IsCompactlyGenerated](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/iscompactlygenerated.md) | 337 | `declaration-track:5882b492cf692788ea66da94e8efa0eea2ce7a04d64783aa6d7f388f232f6faa` |
| 20 | `theorem` | [sSup_compact_le_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/ssup-compact-le-eq.md) | 348 | `result-track:815e9db9a6181bf5af68cd9524cefdffce435e31a3cfd3249b7f3d37c97e1a10` |
| 21 | `theorem` | [sSup_compact_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/ssup-compact-eq-top.md) | 355 | `result-track:955b23775d201da2dbf1468af0aa2aae33fc657c13a0e8932d98ef87e76be62c` |
| 22 | `theorem` | [le_iff_compact_le_imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/le-iff-compact-le-imp.md) | 360 | `result-track:fc8a365db4e5d13e45c46c4f7de1ff0904a3f0f1b65e5f2ec5a906f12fd0a76d` |
| 23 | `theorem` | [DirectedOn.inf_sSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/directedon-inf-ssup-eq.md) | 368 | `result-track:e0a3116a0ef161e3be87130565233ceda9cc90b3d08a0bc17dc28492891c0347` |
| 24 | `theorem` | [DirectedOn.sSup_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/directedon-ssup-inf-eq.md) | 385 | `result-track:3afd3e47fc1102790174f31baf42859106e6f0804ed6d62a3c9306224ce71ba1` |
| 25 | `theorem` | [Directed.inf_iSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/directed-inf-isup-eq.md) | 389 | `result-track:2a95a541031787da190f5c756837a453ccec391497927d97879aeec7e2f93efb` |
| 26 | `theorem` | [Directed.iSup_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/directed-isup-inf-eq.md) | 393 | `result-track:41b3cbdad54f2ae0fe69897c62e6745393460f9df1182c96619f453cf73cfe06` |
| 27 | `theorem` | [DirectedOn.disjoint_sSup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/directedon-disjoint-ssup-right.md) | 397 | `result-track:f4ce94349d0f65b5c147d8d9bdaa0b795f92a58e16a308f4502b0f8205c9b160` |
| 28 | `theorem` | [DirectedOn.disjoint_sSup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/directedon-disjoint-ssup-left.md) | 402 | `result-track:a6a2faa10109b512c9ef4ae3a8ecb999df2db3f898123e649aac58d0f5103f89` |
| 29 | `theorem` | [Directed.disjoint_iSup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/directed-disjoint-isup-right.md) | 407 | `result-track:2c22c742a0abf45e0667fb3de40ad7bab27b4f9469eb2a63395bd335b110b7c8` |
| 30 | `theorem` | [Directed.disjoint_iSup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/directed-disjoint-isup-left.md) | 412 | `result-track:9c003a163ec3055b374e746fc0b553d33f94c9caa8d7aefef58625b53538fc7d` |
| 31 | `theorem` | [inf_sSup_eq_iSup_inf_sup_finset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/inf-ssup-eq-isup-inf-sup-finset.md) | 418 | `result-track:fe51070bef8f56c942feb5475841f07c80ec680aa34530f2edb447a191ef8583` |
| 32 | `theorem` | [CompleteLattice.setIndependent_iff_finite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/completelattice-setindependent-iff-finite.md) | 432 | `result-track:6fdcc325099388fa20faa12076adf29a359d84d11be8ebca6f3225763ea54349` |
| 33 | `theorem` | [CompleteLattice.setIndependent_iUnion_of_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/completelattice-setindependent-iunion-of-directed.md) | 448 | `result-track:b5bf6dda6cc1055c92ae7673350a9cdbaff88a134f333377bcccf23a428f5b70` |
| 34 | `theorem` | [CompleteLattice.independent_sUnion_of_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/completelattice-independent-sunion-of-directed.md) | 463 | `result-track:59347a78555a31b28bbb5a3a4977298465428af12f245edf998101085e1bb39f` |
| 35 | `theorem` | [isCompactlyGenerated_of_wellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/iscompactlygenerated-of-wellfounded.md) | 473 | `result-track:6689d9bfef40806654f7ba24ec8d55695958425b9e90e4a2ceb24bf96055282a` |
| 36 | `theorem` | [Iic_coatomic_of_compact_element](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/iic-coatomic-of-compact-element.md) | 482 | `result-track:bb16f79c2386152acc03d0cdcc568297b5bfd5ac1393816b426afd8c8558a5c0` |
| 37 | `theorem` | [coatomic_of_top_compact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/coatomic-of-top-compact.md) | 503 | `result-track:4a016fc5d931ae4584702973d14e217b78286c9d8b1883eccd0f9053bbfbca9f` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/instance-source-edition-2.md) | 513 | `declaration-track:9d7c2ffd03c8bcf372c4b9022870bd42935d53ebd234f29d4e9297b6e99583d3` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/instance.md) | 534 | `declaration-track:92ef266c44cef4daa6299f76806214e5196eb519c55c156d297c49eaea7abec2` |
| 40 | `theorem` | [exists_setIndependent_isCompl_sSup_atoms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/exists-setindependent-iscompl-ssup-atoms.md) | 559 | `result-track:5d6b831d568b6df0bc664af6b1cd1668705d80d04e53a72bb5b3e45beba8593c` |
| 41 | `theorem` | [exists_setIndependent_of_sSup_atoms_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/exists-setindependent-of-ssup-atoms-eq-top.md) | 614 | `result-track:3b13eb3b1d40cf1cec35444ce80ce6b17fc0502a16a66d628aad1f5be309041c` |
| 42 | `theorem` | [complementedLattice_of_sSup_atoms_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/complementedlattice-of-ssup-atoms-eq-top.md) | 621 | `result-track:d8afb268e2ac6017fb6deedb816b4603b85729690dd61216085919ec5b6feafc` |
| 43 | `theorem` | [complementedLattice_of_isAtomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/complementedlattice-of-isatomistic.md) | 629 | `result-track:6c8bc544ff10f70a6638d4875db56780d6c685ee924bfbb22461e4b172ae18d2` |
| 44 | `theorem` | [complementedLattice_iff_isAtomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedNamespaced.lean/declarations/complementedlattice-iff-isatomistic.md) | 633 | `result-track:3212eb4334992c11e16df960fdfc8415759dfaf19789dbdc744bf7457e88b923` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e89dcd9327f4f6b5cd21930148d4b437635e31ade8ba29d72c547cba396f037 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompactlyGenerated/Variant040d9cd67cf1e67b60b454ae24c66f39d894352c50ceebedeb19bb471d8153d3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompactlyGenerated/Variant040d9cd67cf1e67b60b454ae24c66f39d894352c50ceebedeb19bb471d8153d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

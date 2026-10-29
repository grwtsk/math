# Verification target: Computation Translations Namespaced Convs Of Int

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d442fe91ce876b061af88ef7b5e2665884812648",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variantcc2f3d047f0598c54bd1487ff40df004592a8d2eeb5dcd4d4fa4f6781cb786ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d442fe91ce876b061af88ef7b5e2665884812648`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Translations/Variantcc2f3d047f0598c54bd1487ff40df004592a8d2eeb5dcd4d4fa4f6781cb786ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Translations/Variantcc2f3d047f0598c54bd1487ff40df004592a8d2eeb5dcd4d4fa4f6781cb786ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Translations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stream_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/stream-zero.md) | 68 | `result-track:d83c356e21d4aa07a28838f513e4dad68967a94f867c483a7d6df1b0a550c2bb` |
| 2 | `theorem` | [stream_eq_none_of_fr_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/stream-eq-none-of-fr-eq-zero.md) | 73 | `result-track:e47c63e0a65fee82ca48ac5bc2e4e86f357b58e8aaf0ab783c0797b19c13dd71` |
| 3 | `theorem` | [succ_nth_stream_eq_none_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/succ-nth-stream-eq-none-iff.md) | 83 | `result-track:4972ff195b0e3427bbb23ddd8d1d2722bbbbacee77a8bd2e19f283c953a0ce05` |
| 4 | `theorem` | [succ_nth_stream_eq_some_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/succ-nth-stream-eq-some-iff.md) | 92 | `result-track:e8ee23e11dcdea62e8c8f016c245d3c32264d96a81699f102cd439661243c680` |
| 5 | `theorem` | [stream_succ_of_some](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/stream-succ-of-some.md) | 101 | `result-track:38d657b20585e60ec61fac692de9ef647d07e6878b6cefb0bab972d788af0118` |
| 6 | `theorem` | [stream_succ_of_int](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/stream-succ-of-int.md) | 107 | `result-track:2c6459a6d651ac7e862e50dd270db2d31c8ab7da449fc1391bea79c785286a68` |
| 7 | `theorem` | [exists_succ_nth_stream_of_fr_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/exists-succ-nth-stream-of-fr-zero.md) | 115 | `result-track:fb15e0c613e5667a18fa223355e85a09940d7a10c9d5bfb7f7b9cd0d881328e9` |
| 8 | `theorem` | [stream_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/stream-succ.md) | 130 | `result-track:3a4e85c6bd18f087a7d372c92e14a63dab8352397677fe8b03e346bc28e4b7b8` |
| 9 | `theorem` | [IntFractPair.seq1_fst_eq_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/intfractpair-seq1-fst-eq-of.md) | 162 | `result-track:fb3f88b331443e5726f46e18042d149dfaac46e7c62a3582bc3f973705e37342` |
| 10 | `theorem` | [of_h_eq_intFractPair_seq1_fst_b](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/of-h-eq-intfractpair-seq1-fst-b.md) | 165 | `result-track:2c591e962266a8e3e0c808288b0ea2beb677e6aaf00adae9a7e58a18242cc2a4` |
| 11 | `theorem` | [of_h_eq_floor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/of-h-eq-floor.md) | 171 | `result-track:d3b044dee2a7774a8f76ab0adf3ff2cc6ca1ff9771cb96c685d521043625d955` |
| 12 | `theorem` | [IntFractPair.get?_seq1_eq_succ_get?_stream](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/intfractpair-get-seq1-eq-succ-get-stream.md) | 190 | `result-track:ea4dcffead3dad4df8b4066e7089091592f48354bfa712ee402130b1eaad04b9` |
| 13 | `theorem` | [of_terminatedAt_iff_intFractPair_seq1_terminatedAt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/of-terminatedat-iff-intfractpair-seq1-terminatedat.md) | 203 | `result-track:a3a9a0dad0e87fd2c14ca7ee5b892bb73615e72f24887735525fb02e5bc7b1b4` |
| 14 | `theorem` | [of_terminatedAt_n_iff_succ_nth_intFractPair_stream_eq_none](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/of-terminatedat-n-iff-succ-nth-intfractpair-stream-eq-none.md) | 207 | `result-track:26944bb4a79199a5594b410a78b214edf160bb30248845e9a76fef67fcb77ff0` |
| 15 | `theorem` | [IntFractPair.exists_succ_get?_stream_of_gcf_of_get?_eq_some](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/intfractpair-exists-succ-get-stream-of-gcf-of-get-eq-some.md) | 223 | `result-track:ee723f22076b9dd75c80930fcd7359beb68f54257df999b88ed8e8480dcc3758` |
| 16 | `theorem` | [get?_of_eq_some_of_succ_get?_intFractPair_stream](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/get-of-eq-some-of-succ-get-intfractpair-stream.md) | 236 | `result-track:553e738b72862c6818b6261a4abbad17174c4df057311c222b1b012478454ab3` |
| 17 | `theorem` | [get?_of_eq_some_of_get?_intFractPair_stream_fr_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/get-of-eq-some-of-get-intfractpair-stream-fr-ne-zero.md) | 245 | `result-track:1318ad94bdaf111823438b24602b86283d870676f309590770ce2e1898a49d1d` |
| 18 | `theorem` | [of_s_head_aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/of-s-head-aux.md) | 257 | `result-track:73c39da97bd0a16564fc4318d919da5a7e2f2a30b8eb3bdb8225a99b3b23987c` |
| 19 | `theorem` | [of_s_head](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/of-s-head.md) | 268 | `result-track:8848eb13c974711ab7770933d75bd0c677ec28d041a3871a5fc4ad1f3c5791c8` |
| 20 | `theorem` | [of_s_of_int](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/of-s-of-int.md) | 278 | `result-track:2f330eadbd5e0c1a6f1a99bd529b4f0f9abf2325a0d4197c4323156363837c26` |
| 21 | `theorem` | [of_s_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/of-s-succ.md) | 291 | `result-track:849812bdea4f9ae83811c27d9a70fcee368678d56f7cb72f52c712028b8343ec` |
| 22 | `theorem` | [of_s_tail](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/of-s-tail.md) | 309 | `result-track:cc99b62173f343c13910d56d19b1f005ddcf180b090db3ed25906fa3ecdd8ba1` |
| 23 | `theorem` | [convs'_of_int](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/convs-of-int.md) | 317 | `result-track:a10db3348200cfab070af9bb20cb1d6019ef16f67ad8fc9ff181345343c4b74c` |
| 24 | `theorem` | [convs'_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ComputationTranslationsNamespacedConvsOfInt.lean/declarations/convs-succ.md) | 329 | `result-track:81fde1711b3ecd3381a34cfb9eb14a49e43ed1c2c11dce1238d4a3877e87b7dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c6818101008d6a452ee5fbd40b4c2572fad017bfc9b95c2257a500e063bd7a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Translations/Variantcc2f3d047f0598c54bd1487ff40df004592a8d2eeb5dcd4d4fa4f6781cb786ee.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Translations/Variantcc2f3d047f0598c54bd1487ff40df004592a8d2eeb5dcd4d4fa4f6781cb786ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

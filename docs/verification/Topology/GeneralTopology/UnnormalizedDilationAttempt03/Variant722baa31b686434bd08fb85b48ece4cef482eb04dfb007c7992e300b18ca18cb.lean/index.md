# Verification target: GRWTSK.Topology.GeneralTopology.UnnormalizedDilationAttempt03.Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "028b63dad3ccfda51f6248a3b1b0dbfba3238cfa",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `028b63dad3ccfda51f6248a3b1b0dbfba3238cfa`.

Source path: `GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.ClosedSubmodule` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unnormalizedFunc](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/unnormalizedfunc--0f76e103502711dbf091d52b.md) | 21 | `declaration-track:0f76e103502711dbf091d52b3cd45e9ac31e2269f8a2d2c8c3e3b35ff8bc77b7` |
| 2 | `theorem` | [unnormalizedFunc_memLp](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/unnormalizedfunc-memlp--3fbf3c081e8cf692606e3d9e.md) | 23 | `result-track:3fbf3c081e8cf692606e3d9ea2005750733c9eae6ec2508fcfaff32dd3ae3617` |
| 3 | `def` | [unnormalized](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/unnormalized--91ef66becd97c346eed5c729.md) | 30 | `declaration-track:91ef66becd97c346eed5c729a48398663fca7b207d49eea9d9dfb9fbd1981528` |
| 4 | `theorem` | [unnormalized_ae](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/unnormalized-ae--e9cca39a7745d48f22cfecc4.md) | 33 | `result-track:e9cca39a7745d48f22cfecc4fc4854e84fa8bdc7dcfc2fe6ef2bc5baa95f919a` |
| 5 | `theorem` | [dilate_eq_sqrt_smul](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/dilate-eq-sqrt-smul--679f615ce06942f4b84c743f.md) | 37 | `result-track:679f615ce06942f4b84c743f20e3ea953b1a8b5744ed12a03d68f2884fab677b` |
| 6 | `theorem` | [unnormalized_eq_inv_sqrt_smul](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/unnormalized-eq-inv-sqrt-smul--960bd9774ac715cb35c5d839.md) | 46 | `result-track:960bd9774ac715cb35c5d83938ebc6fe4a275e2bdca2e32c4abd8c173ee7e8b0` |
| 7 | `theorem` | [unnormalized_norm](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/unnormalized-norm--917082e0d77e6c8ddb89197b.md) | 51 | `result-track:917082e0d77e6c8ddb89197b8dd33957919c3b8730f5c16cca48faebb3e70e34` |
| 8 | `theorem` | [span_range_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/span-range-eq--96903b0257549ec36d3659c9.md) | 56 | `result-track:96903b0257549ec36d3659c9aa22f5bd545783adc30f2d7ba1ec9ed5579cd5de` |
| 9 | `theorem` | [closure_span_range_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/closure-span-range-eq--a7b0e9f01a3181096f8c5b49.md) | 71 | `result-track:a7b0e9f01a3181096f8c5b49b40e6bb8e613e9c3e7f4c60c9c50f29dd7e89beb` |
| 10 | `def` | [actualIntegerOrbit](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/actualintegerorbit--f7598e9233163af300ad9903.md) | 76 | `declaration-track:f7598e9233163af300ad9903998c2b677747111699d0ae4635e0d2b9dd7b1388` |
| 11 | `theorem` | [actualIntegerOrbit_ae](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/actualintegerorbit-ae--b283e17d86fef89d1fab95d6.md) | 79 | `result-track:b283e17d86fef89d1fab95d62501abf5a015beca6306b21ac13b4fb0ff11fefc` |
| 12 | `theorem` | [actual_integer_span_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/actual-integer-span-eq--9029b2f65e3ef7409b34f410.md) | 88 | `result-track:9029b2f65e3ef7409b34f410ccf8cfbfd1af58d6fd19e2f60e0fe0ff8c2c0a6f` |
| 13 | `theorem` | [actual_integer_closure_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/actual-integer-closure-eq--6e7ba16b2d0ea784489e72d2.md) | 94 | `result-track:6e7ba16b2d0ea784489e72d2d2df3e5c622e8d373b3629aef89316ba4f932151` |
| 14 | `theorem` | [actual_continuous_closure_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant722baa31b686434bd08fb85b48ece4cef482eb04dfb007c7992e300b18ca18cb.lean/declarations/actual-continuous-closure-eq--f479336e014f0f23c5158d8d.md) | 99 | `result-track:f479336e014f0f23c5158d8d899ee455f68c60e70d4667b9b94278dcbbf7c485` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

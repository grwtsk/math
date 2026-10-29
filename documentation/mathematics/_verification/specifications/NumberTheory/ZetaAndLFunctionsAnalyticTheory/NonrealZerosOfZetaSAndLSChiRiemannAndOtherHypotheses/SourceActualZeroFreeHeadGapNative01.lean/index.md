# Verification target: Source Actual Zero Free Head Gap Native01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c011d21cdd426b6a59cb62a3752ec523726b1f8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative01/Variant3169e4f560fa9dd69c4e3ab197a7c30a2771a19f6daa1f982114e162cbb946cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative01.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c011d21cdd426b6a59cb62a3752ec523726b1f8`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative01/Variant3169e4f560fa9dd69c4e3ab197a7c30a2771a19f6daa1f982114e162cbb946cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative01/Variant3169e4f560fa9dd69c4e3ab197a7c30a2771a19f6daa1f982114e162cbb946cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualCriticalZeroHead` — import line 1; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_zero_upper_gap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative01.lean/declarations/actual-zero-upper-gap.md) | 19 | `result-track:06fd5ce63b641563ee2ae0ed1b581a4aff1c4e4307f1f2bd041ad190a881a841` |
| 2 | `theorem` | [actualCarrier_zero_free_gap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative01.lean/declarations/actualcarrier-zero-free-gap.md) | 33 | `result-track:b2412243939aad6c781181c012fcfc1d401f50cef675c6ec50fb6bb7c39ee260` |
| 3 | `theorem` | [actualCarrier_below_height_gap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative01.lean/declarations/actualcarrier-below-height-gap.md) | 50 | `result-track:3710190754f9f4c4b4672dcd5647c9290dab27899944641c4be463da08947573` |
| 4 | `theorem` | [actualZeroFreeMovingExponent_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative01.lean/declarations/actualzerofreemovingexponent-eq.md) | 70 | `result-track:c392750ab685c7f168f66a397d210a0b885d386f1d70abe732972e95ee576e60` |
| 5 | `theorem` | [actualZeroFreeMovingCorrection_tendsto_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative01.lean/declarations/actualzerofreemovingcorrection-tendsto-zero.md) | 81 | `result-track:6b6b273c0797588f4a23b4511f73bfcaf30c0ead65da3ce3eee783a54d5f254d` |
| 6 | `theorem` | [actualZeroFreeMovingAllowance_tendsto_atTop](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative01.lean/declarations/actualzerofreemovingallowance-tendsto-attop.md) | 88 | `result-track:7c4902add49a508a2bd89b5d1da470f867f6dd4f7c73c47033fcf233c5f957de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=991b19db01156ada1ef6c2702df6b1906cd0e1afed4784821903f9f99f985d63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative01/Variant3169e4f560fa9dd69c4e3ab197a7c30a2771a19f6daa1f982114e162cbb946cb.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative01/Variant3169e4f560fa9dd69c4e3ab197a7c30a2771a19f6daa1f982114e162cbb946cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

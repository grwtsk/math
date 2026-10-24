# Verification target: GRWTSK.Topology.GeneralTopology.ThetaPositiveLift.Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "638e99b8eec7abd7ff95b51125676c4b465db5de",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `638e99b8eec7abd7ff95b51125676c4b465db5de`.

Source path: `GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiPhiIBP` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Norm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaADecayConstant](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaadecayconstant--16dd9c864d0145b340957397.md) | 36 | `declaration-track:16dd9c864d0145b34095739735604bf168cc780acbca60b614d349b7b78d04f6` |
| 2 | `def` | [thetaADerivDecayConstant](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaaderivdecayconstant--7515242620bcf18c23c42349.md) | 40 | `declaration-track:7515242620bcf18c23c42349dfacd766c0d02341d78c46bd111453ce18981b97` |
| 3 | `theorem` | [hurwitzF_nat_nonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/hurwitzf-nat-nonnegative--5ef493500d4b760fd1baf52a.md) | 44 | `result-track:5ef493500d4b760fd1baf52a1eae1b47194e1c8d90775eb402935262d7c60f7e` |
| 4 | `theorem` | [thetaADecayConstant_nonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaadecayconstant-nonnegative--d4f88b34ca624b709713f81b.md) | 51 | `result-track:d4f88b34ca624b709713f81b8560241527cd2a4a44a17284e1979c90cf58d024` |
| 5 | `theorem` | [thetaADerivDecayConstant_nonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaaderivdecayconstant-nonnegative--a8420c5ff880c4bbe1db6295.md) | 55 | `result-track:a8420c5ff880c4bbe1db629509c000d7e3671ba241e86ddcee1226c87c150450` |
| 6 | `theorem` | [f_nat_le_half_split](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/f-nat-le-half-split--ea46f4de2e2bbf1fff1b1d57.md) | 63 | `result-track:ea46f4de2e2bbf1fff1b1d57d84f726c50d9889f745c54ccd9718f421af018d3` |
| 7 | `theorem` | [F_nat_le_half_split](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/f-nat-le-half-split--f3602b208d3fbd736d5969c9.md) | 97 | `result-track:f3602b208d3fbd736d5969c9b66f2204c936e9081e16e5a0275eb22b812e7ae1` |
| 8 | `theorem` | [thetaA_eq_F_nat](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaa-eq-f-nat--f9732249d562c2788a91c2cd.md) | 112 | `result-track:f9732249d562c2788a91c2cdf0d63571e3c4d4a8f36eb7bd042a1d4d5d586056` |
| 9 | `theorem` | [thetaADerivSeries_eq_F_nat](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaaderivseries-eq-f-nat--2a227a66b8272a84c97f2e09.md) | 123 | `result-track:2a227a66b8272a84c97f2e096f182febbf3860bf048c57b68505d53c9126e154` |
| 10 | `theorem` | [thetaA_nonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaa-nonnegative--d431145b7243dcefc8967973.md) | 141 | `result-track:d431145b7243dcefc8967973b1dde27f04ff07038cd2210c6389b8a7fa87d4a9` |
| 11 | `theorem` | [thetaA_le_superexp](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaa-le-superexp--9ceaf19fea7d95f592c55050.md) | 148 | `result-track:9ceaf19fea7d95f592c550504304fec2e4ac0ce25d5e376255c2130268da5234` |
| 12 | `theorem` | [thetaADerivSeries_norm_le_superexp](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaaderivseries-norm-le-superexp--745cb1c620a3788e05a68c62.md) | 167 | `result-track:745cb1c620a3788e05a68c62c65345b3726cdf7cdd87f02fc39cfbae0519d048` |
| 13 | `theorem` | [eventually_linear_le_half_pi_exp](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/eventually-linear-le-half-pi-exp--8244cded91853042a2270d5b.md) | 212 | `result-track:8244cded91853042a2270d5b345f620b221421aefb6d20894bf29cc87a50964e` |
| 14 | `theorem` | [thetaA_norm_le_exp_rate_eventually](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaa-norm-le-exp-rate-eventually--d20b8aa5472d7d1b7ea66872.md) | 231 | `result-track:d20b8aa5472d7d1b7ea6687286fa4fad9cce2128a5292431c63860d25a253d93` |
| 15 | `theorem` | [thetaADerivSeries_norm_le_exp_rate_eventually](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaaderivseries-norm-le-exp-rate-eventually--401246c923ae9060ff0dfd0f.md) | 243 | `result-track:401246c923ae9060ff0dfd0f715cb9e34e8c5bd5e18bb9faf712c869edb6480f` |
| 16 | `theorem` | [thetaExpKernel_norm_le](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaexpkernel-norm-le--577702f8d6c1f07f586453c8.md) | 256 | `result-track:577702f8d6c1f07f586453c8b4a776c40191dd1dfd39eacc1538019445af5510` |
| 17 | `def` | [thetaBoundaryDecayConstant](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaboundarydecayconstant--b826856fcb00cc4f19b01f38.md) | 265 | `declaration-track:b826856fcb00cc4f19b01f38d863cb87b316822ab6f3a7f5d7d2186c52866a4f` |
| 18 | `theorem` | [thetaBoundaryDecayConstant_nonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaboundarydecayconstant-nonnegative--06dbdd1cede189fe14c7b3fb.md) | 269 | `result-track:06dbdd1cede189fe14c7b3fb2cdb872bb6bf0f4b974ea04c64e7d5c60c48c1a2` |
| 19 | `theorem` | [thetaExpBoundary_norm_le_eventually](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaexpboundary-norm-le-eventually--66e0070a58066a3fee67471a.md) | 277 | `result-track:66e0070a58066a3fee67471ad280572578202e4987b63e57711088c982dc8bba` |
| 20 | `theorem` | [thetaExpBoundary_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetaexpboundary-tendsto-attop--874b7273aeae4653dc31dc82.md) | 329 | `result-track:874b7273aeae4653dc31dc821e61f617d7d28d03ce5490b59452cfbf4c99a9f9` |
| 21 | `theorem` | [thetaCoshBoundary_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetacoshboundary-tendsto-attop--5d722312d0c5f3cd1c988a28.md) | 343 | `result-track:5d722312d0c5f3cd1c988a284c6bfecf581f42340d9db3ea2570df4dca0a08e1` |
| 22 | `theorem` | [thetaCoshBoundary_explicit_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/declarations/thetacoshboundary-explicit-tendsto-attop--870267026c99c15b57b72e33.md) | 352 | `result-track:870267026c99c15b57b72e337a057225a092e05786cc2686a90c2ba7a41dfa6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

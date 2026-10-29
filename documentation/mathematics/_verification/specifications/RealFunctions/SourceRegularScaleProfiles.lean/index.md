# Verification target: Source Regular Scale Profiles

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c12f2d98c2d9f48c9a0c1589a6eb09d21249c6e2",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantc744141a92d91e9650a92a3b31c7367c1c1a76258defea89eddb6598fd50a7e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/SourceRegularScaleProfiles.lean/index.md) · [Full source](../../../../RealFunctions/SourceRegularScaleProfiles.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c12f2d98c2d9f48c9a0c1589a6eb09d21249c6e2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantc744141a92d91e9650a92a3b31c7367c1c1a76258defea89eddb6598fd50a7e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantc744141a92d91e9650a92a3b31c7367c1c1a76258defea89eddb6598fd50a7e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceWeightedOrbitAdapter` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceScaleDerivative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RegularScale](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/regularscale.md) | 42 | `declaration-track:1b676739d35df934b5b5f10d44f99f9f455a5342a484bfcdd8cf7d130c289fab` |
| 2 | `theorem` | [regularScale_of_noninteger](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/regularscale-of-noninteger.md) | 47 | `result-track:c8a2bdd65caad18f1a16f9d8a5860e452949ead41e500feedeb488d233296876` |
| 3 | `theorem` | [cutoffs_eventually_eq](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/cutoffs-eventually-eq.md) | 55 | `result-track:1c9034eb37e8bbb81c71b75b05f4c4a7fea5676514cafaeecf87cae4bd7122b9` |
| 4 | `theorem` | [inventory_coefficients_eventually_eq](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/inventory-coefficients-eventually-eq.md) | 65 | `result-track:634fbcb6fa1c84166ec54c57d6b2fa59fa013e220859ab456fca63300836fb80` |
| 5 | `def` | [mangoldtState](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/mangoldtstate.md) | 72 | `declaration-track:840ae9ccd10fac9f8cc85b79483213e29c28bd64a78adfe8b903a26affc2feba` |
| 6 | `def` | [centeredForwardState](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centeredforwardstate.md) | 76 | `declaration-track:7a3d5b0a00568621c9b7e0f246812566d331f268e5f6f3a0f72d34dc15407abf` |
| 7 | `def` | [reflectedState](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/reflectedstate.md) | 81 | `declaration-track:5ed39b2ec04d4646347382a07ef6254aaf229bc7dc67ceeffad210ea732a0cc2` |
| 8 | `theorem` | [mangoldtState_eq_mangoldtAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/mangoldtstate-eq-mangoldtat.md) | 84 | `result-track:c604d1ffd031b95e9bc9ae055600aa94f87d7e71da4ba205f7bd7e46d1328a24` |
| 9 | `theorem` | [centeredForwardState_eq_centeredForwardAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centeredforwardstate-eq-centeredforwardat.md) | 90 | `result-track:39da8f7c04b9a48b0bd58cbe847b41924c9843a8003cb3264664f96da5b6e45c` |
| 10 | `theorem` | [reflectedState_eq_reflectedMobiusAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/reflectedstate-eq-reflectedmobiusat.md) | 97 | `result-track:6aa9ff9433b3f15a7854e71cf225a54230e235317546ca66de2bf571e8d44baf` |
| 11 | `theorem` | [mangoldtState_actual](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/mangoldtstate-actual.md) | 104 | `result-track:de83920e1ab80c34a245b655c0472ad5b9f44d5399cc52d6185087902455d33a` |
| 12 | `theorem` | [centeredForwardState_actual](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centeredforwardstate-actual.md) | 110 | `result-track:5f0df2e1f7103e4c915c88487c60dedb3d65746f9f30212a14e71c178cd9ddf3` |
| 13 | `theorem` | [reflectedState_actual](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/reflectedstate-actual.md) | 116 | `result-track:18ea2f479e4e445adaf541b43e27f9b0b57bbf4086e2d42f89771805cb6e1e21` |
| 14 | `def` | [mangoldtDerivative](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/mangoldtderivative.md) | 121 | `declaration-track:b4c1d8ba4778a74ac421eab819eb1f9609c30c94287b0e5f932a145a90d79885` |
| 15 | `def` | [centeredForwardDerivative](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centeredforwardderivative.md) | 125 | `declaration-track:3d716abe3e6d771d1e9c8d49bbe8b1646ac640649686287ac0f0d3f0cbef5911` |
| 16 | `def` | [reflectedDerivative](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/reflectedderivative.md) | 130 | `declaration-track:2ee2436532fe7071cec09920e35ce08974819504fbc7c2372561833396a60406` |
| 17 | `theorem` | [mangoldtState_hasDerivAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/mangoldtstate-hasderivat.md) | 133 | `result-track:c4e425749735a05c45b5405687782fa2181c539f8349350e76839c5dd07557fd` |
| 18 | `theorem` | [centeredForwardState_hasDerivAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centeredforwardstate-hasderivat.md) | 141 | `result-track:fa2b6a302d8cc9e96339b55be857e2d7330530b907db0a94611b2b1dd864f3aa` |
| 19 | `theorem` | [reflectedState_hasDerivAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/reflectedstate-hasderivat.md) | 150 | `result-track:a50e09002585c56949454fca272dfd1afb5d2c134ba2fbedb950021dded5a0ef` |
| 20 | `theorem` | [mangoldtState_contDiffAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/mangoldtstate-contdiffat.md) | 158 | `result-track:ab8b20bc15f990db52bc4a9392976f569f5f585b4f9c8e458d6c79cb5a6db893` |
| 21 | `theorem` | [centeredForwardState_contDiffAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centeredforwardstate-contdiffat.md) | 167 | `result-track:71a31a3f9c68a9a3ceb8704018d7d34d041c055f2eadba9c0f95ab6959ad0f2f` |
| 22 | `theorem` | [reflectedState_contDiffAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/reflectedstate-contdiffat.md) | 176 | `result-track:836af378e0ea99209906c1910779bfa14de24d719411d5d8fb1a581a2700f217` |
| 23 | `theorem` | [mangoldtState_deriv](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/mangoldtstate-deriv.md) | 183 | `result-track:45e04388f87d5b35e9d381d2cdf5dea8691aebef284cc00ec243cf887088b3f0` |
| 24 | `theorem` | [centeredForwardState_deriv](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centeredforwardstate-deriv.md) | 187 | `result-track:ef67d05b82bb1c9e6eab6aebe65a4c9f514b911cf00505db58badc9cd65eec9b` |
| 25 | `theorem` | [reflectedState_deriv](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/reflectedstate-deriv.md) | 192 | `result-track:9f31687a13ceada7475bbe930a457d908e343b518c67fc064cb3cb55d40fad55` |
| 26 | `def` | [sourceInteraction](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/sourceinteraction.md) | 196 | `declaration-track:e0b431a36e6e8c127c12c61517a80f51ab15e32b629adfacbe9f720973aa117a` |
| 27 | `def` | [interactionDerivative](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/interactionderivative.md) | 199 | `declaration-track:2200179d2dcf422989f82c369e13f457a85d1658f8a6018fe060dc989b20cc0b` |
| 28 | `theorem` | [sourceInteraction_hasDerivAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/sourceinteraction-hasderivat.md) | 204 | `result-track:c171a4deeb030972c4d5ee6bf18d2f0d48651985863d7bfbd1261912fc36b37b` |
| 29 | `theorem` | [sourceInteraction_deriv](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/sourceinteraction-deriv.md) | 210 | `result-track:22e8f4ddd03198e008b07b07fffe9521c36a5c4d6515dac084e47d2d9ed0d37d` |
| 30 | `theorem` | [sourceInteraction_contDiffAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/sourceinteraction-contdiffat.md) | 215 | `result-track:f852d56d3455e95122cc0e0fa2096333c576cf9006e656e70e5e07eba241c860` |
| 31 | `theorem` | [sourceInteraction_actual](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/sourceinteraction-actual.md) | 221 | `result-track:3113586477f55a55f37393463d096f7b79cc09adb44c41b9d639e2ddff51e5a1` |
| 32 | `theorem` | [not_regularScale_one](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/not-regularscale-one.md) | 227 | `result-track:e8a61d932f23cd12c62e76e386ce2fe29e1e3c492d9056baee0c8d250fe7855d` |
| 33 | `def` | [reflectedAtomInteraction](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/reflectedatominteraction.md) | 233 | `declaration-track:52f20e0bf99f19042da8918197f571eae6b7cdaef753669b600a7ff8701ef5fc` |
| 34 | `def` | [reflectedAtomDerivative](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/reflectedatomderivative.md) | 238 | `declaration-track:68425a10a3d194f9e6c0cdd1abec8705bad60ea4f141928aadab9aeda1f0e6ee` |
| 35 | `theorem` | [reflectedAtomInteraction_source](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/reflectedatominteraction-source.md) | 245 | `result-track:2c486f8006ef97ff706077e87517414522044c208261ed2aad39354a0ed036e3` |
| 36 | `theorem` | [reflectedAtomInteraction_hasDerivAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/reflectedatominteraction-hasderivat.md) | 252 | `result-track:f1b863771cf1a0589e19f6c06697f34564c3b76fb5ecbdbaf7a0b57dc7036e56` |
| 37 | `def` | [centeredDiagonalState](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centereddiagonalstate.md) | 266 | `declaration-track:926a68bd920d901e3432f4597867cb761d72361c9273bcc7f4d711c50e9f02ef` |
| 38 | `def` | [centeredDiagonalDerivative](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centereddiagonalderivative.md) | 272 | `declaration-track:f36dd4798bf1878725ddf16b1b7509435d7ab653af49fd7e0de2ac8fad6b3bd7` |
| 39 | `theorem` | [centeredDiagonalState_eq_centeredDiagonalAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centereddiagonalstate-eq-centereddiagonalat.md) | 278 | `result-track:320f956653a66f2ffc20e91311f9a88fbdaf5f01c9dada670ec10b6e1a4585d8` |
| 40 | `theorem` | [centeredDiagonalState_actual](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centereddiagonalstate-actual.md) | 286 | `result-track:f92f6a2d7179cddc72832c07c06fbe41edf9c92ac0884816a7e5f53ead8ef044` |
| 41 | `theorem` | [centeredDiagonalState_hasDerivAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centereddiagonalstate-hasderivat.md) | 291 | `result-track:51611740e6f5e0e45fb34ac414e4f72e9d5d9dc9624ebddd04da9f0d51b548f3` |
| 42 | `theorem` | [centeredDeletedDiagonal_hasDerivAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centereddeleteddiagonal-hasderivat.md) | 306 | `result-track:3e393ee277b30fa8ac6478318b33fd69a74564a7c0298b02bdbb969d5de369d2` |
| 43 | `theorem` | [centeredDeletedDiagonal_deriv](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centereddeleteddiagonal-deriv.md) | 313 | `result-track:c03650e788ae5eabb6bdc8f186032556ccfc2c716678307fb729c7748294d437` |
| 44 | `def` | [covarianceHalfState](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/covariancehalfstate.md) | 318 | `declaration-track:0574925f7b7e77bc34afcfffcd398d4a88ec3c8a9862fbea173de1e666ad6a7b` |
| 45 | `def` | [covarianceHalfDerivative](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/covariancehalfderivative.md) | 321 | `declaration-track:6ce19b45dc8ade71324aec84eb827fd92fd4e7d66e76e8158f1a56930b8bbaac` |
| 46 | `theorem` | [covarianceHalfState_hasDerivAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/covariancehalfstate-hasderivat.md) | 325 | `result-track:fe1bc9922c9a611f20a28813d7b59f2473888ee20e740ea4784dade2cc6c7b3d` |
| 47 | `theorem` | [covarianceHalfState_actual](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/covariancehalfstate-actual.md) | 330 | `result-track:936face97e5951db756ebadbe50cf3d52f57fef7184773e685899c776cb154fc` |
| 48 | `theorem` | [covarianceOperator_half_hasDerivAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/covarianceoperator-half-hasderivat.md) | 337 | `result-track:cc589d10c2137554240713600991c10725b5048fd7d1a8c6d307a6c52e3ae268` |
| 49 | `def` | [compensatedState](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/compensatedstate.md) | 345 | `declaration-track:002e066ed582dea827103b95d190dcb2b8d36d78fac54bc4d95f7fc233f2f8e8` |
| 50 | `theorem` | [compensatedState_actual](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/compensatedstate-actual.md) | 349 | `result-track:381a0b485e6f22b376d7cfee0f41aa5030927cdb8891f92b9a362db008167aa2` |
| 51 | `theorem` | [compensatedState_hasDerivAt_of_mainTerm](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/compensatedstate-hasderivat-of-mainterm.md) | 354 | `result-track:aae902bb76b24e62474051bf3bbec0ca66b39a526614ee4e54349539b204ece4` |
| 52 | `theorem` | [not_regularScale_of_square_nat](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/not-regularscale-of-square-nat.md) | 361 | `result-track:2956afb166e11708b2966a7e0449625818a64d591d3070ada887cd84a8b68288` |
| 53 | `theorem` | [not_regularScale_of_upper_nat](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/not-regularscale-of-upper-nat.md) | 370 | `result-track:003ef514f64eb2edf4edcb93d1b2b6cadcfb584624b85d28f91ed7688347550a` |
| 54 | `theorem` | [regularScale_iff_no_cutoff_event](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/regularscale-iff-no-cutoff-event.md) | 379 | `result-track:9c20c4571dd867dd2b1357b737c78f5df71d10d102c5c021376acd413bd4038b` |
| 55 | `theorem` | [reflectedAtomInteraction_contDiffAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/reflectedatominteraction-contdiffat.md) | 390 | `result-track:2243b914021b1fa6b6f4e460f5b63f91c0d2e58c8cf915b596eae2bf1df16bc4` |
| 56 | `theorem` | [centeredDiagonalState_contDiffAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centereddiagonalstate-contdiffat.md) | 404 | `result-track:078404cb35aa1dd4ef8d93262d1fe22f1b6d0dcc1295aa884fe211a91a9b68d9` |
| 57 | `theorem` | [centeredDeletedDiagonal_contDiffAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/centereddeleteddiagonal-contdiffat.md) | 418 | `result-track:1357077d0d92b2df0d1f717c531b28c1cbfc2e4907c2c611a8c5e1598c9a1170` |
| 58 | `theorem` | [covarianceHalfState_contDiffAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/covariancehalfstate-contdiffat.md) | 425 | `result-track:bb8201fb5e5297a0ad148fb001ff667d202c5dca02367f2072fdf6b9de30a98e` |
| 59 | `theorem` | [covarianceOperator_half_contDiffAt](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/covarianceoperator-half-contdiffat.md) | 430 | `result-track:5b015c59cdf50cce7ba24cd5f1104a6bada974be6cff5e2d516e3cfab1220f1d` |
| 60 | `theorem` | [compensatedState_eq_signed_readout](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/compensatedstate-eq-signed-readout.md) | 437 | `result-track:3c353c9e90cc0d92ab48395268b92ce071a6b25982b319f31d7b4b36513e8759` |
| 61 | `theorem` | [compensatedState_contDiffAt_of_mainTerm](../../../../RealFunctions/SourceRegularScaleProfiles.lean/declarations/compensatedstate-contdiffat-of-mainterm.md) | 442 | `result-track:fd95f297401675076168a0180314a4c55c3eb9bc45c7f726cab10615f9d0595d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9a2c9878bec4b68491854593054173606500be56b54214266c7201156b99989 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantc744141a92d91e9650a92a3b31c7367c1c1a76258defea89eddb6598fd50a7e3.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantc744141a92d91e9650a92a3b31c7367c1c1a76258defea89eddb6598fd50a7e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

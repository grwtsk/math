# Verification target: Pi Topology Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ed47f9528a50e06c606e90ac9cb906813bca790",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ed47f9528a50e06c606e90ac9cb906813bca790`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/instance.md) | 87 | `declaration-track:f22e7ef6e234dd6f572a64252df3e2b01fc5ee0bb6194512e1b416ede4f8871e` |
| 2 | `theorem` | [instT0Space](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/instt0space.md) | 92 | `result-track:c80a69c6c050870c08f45923042daacfc0d27a8056f77ddbbe7e889d063e6b87` |
| 3 | `theorem` | [instT2Space](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/instt2space.md) | 97 | `result-track:63982df272ec0db03851361507b5ab35c795461b35211ffd3c06c0a71d77ffbb` |
| 4 | `theorem` | [continuous_coeff](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/continuous-coeff.md) | 101 | `result-track:496e70c9e2d8159af66f414538265e1d0b583b1a81b8935cf0f6a344ccc50b68` |
| 5 | `theorem` | [continuous_constantCoeff](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/continuous-constantcoeff.md) | 105 | `result-track:7d57a9eaf4603a7d9cade2421e1a503224c9a7f38a58c8d1a078449ed0497e40` |
| 6 | `theorem` | [tendsto_iff_coeff_tendsto](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/tendsto-iff-coeff-tendsto.md) | 109 | `result-track:ba2add317071676be6459592db5564abdc7f618fbaeeaf37b5fb6bfbdfca995a` |
| 7 | `theorem` | [tendsto_trunc_atTop](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/tendsto-trunc-attop.md) | 122 | `result-track:4c815ca3f8ae135e9adf186b2bbc3d64c171d81ae3c63b2aec7f1ec3deca5f1e` |
| 8 | `theorem` | [denseRange_toPowerSeries](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/denserange-topowerseries.md) | 129 | `result-track:ff67a3943d551cc705ba53f74be0927f1428b9a47c01b69f1540922b7ff41fab` |
| 9 | `theorem` | [instIsTopologicalSemiring](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/instistopologicalsemiring.md) | 135 | `result-track:d067ae364b63c526eadcd29cd0d9f066e38193190af701ac69df6b41ebffa330` |
| 10 | `theorem` | [instIsTopologicalRing](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/instistopologicalring.md) | 141 | `result-track:d7ba4fa2fa9591dd49316e731ccc309f7b5d71ad8c94d571c5059c71f6936d5b` |
| 11 | `theorem` | [hasSum_iff_hasSum_coeff](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/hassum-iff-hassum-coeff.md) | 148 | `result-track:05ef6ed3124bd32f70d9ac181f9d7342dbc6e51fa6ffa9509e81c187e74f6a96` |
| 12 | `theorem` | [summable_iff_summable_coeff](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/summable-iff-summable-coeff.md) | 153 | `result-track:6848ee46c0cb9db978fcff6f965bb251dd71e4a23ecc781e7488010ff25393c8` |
| 13 | `theorem` | [summable_of_tendsto_order_atTop_nhds_top](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/summable-of-tendsto-order-attop-nhds-top.md) | 164 | `result-track:2abdc8110d8ac03aec6fe985a2780b86fcb0c23c011b955670a7c498bc407598` |
| 14 | `theorem` | [summable_pow_of_constantCoeff_eq_zero](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/summable-pow-of-constantcoeff-eq-zero.md) | 180 | `result-track:d11d1e53e0baf7eb3b1833d2d78626802e3f701cc49ffdd0cd5ba2fa4d065b88` |
| 15 | `theorem` | [tsum_pow_mul_one_sub_of_constantCoeff_eq_zero](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/tsum-pow-mul-one-sub-of-constantcoeff-eq-zero.md) | 189 | `result-track:4ec804f6fb9c72773931e18ffc0a62571f8d255e0875f171735cb000b217dc93` |
| 16 | `theorem` | [one_sub_mul_tsum_pow_of_constantCoeff_eq_zero](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/one-sub-mul-tsum-pow-of-constantcoeff-eq-zero.md) | 194 | `result-track:e17f6b2fdd8dc05cb6f18f8233e7c3310f88dae2b245c66080ecc65c40d468cf` |
| 17 | `theorem` | [summable_prod_of_tendsto_order_atTop_nhds_top](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/summable-prod-of-tendsto-order-attop-nhds-top.md) | 207 | `result-track:30e2072467a3e429bd27048e6780c2ae519dc28ffb8a9b97b3e2a107bc8314d5` |
| 18 | `theorem` | [multipliable_one_add_of_tendsto_order_atTop_nhds_top](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/multipliable-one-add-of-tendsto-order-attop-nhds-top.md) | 225 | `result-track:25f2e9532f4c70fc0ed79ffe04735baa2c94dcb83b601596e60b31070fbdbb80` |
| 19 | `theorem` | [multipliable_one_sub_X_pow](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/multipliable-one-sub-x-pow.md) | 234 | `result-track:3c02d059109da15305a9280994cac3dce873c06a0f2a205a369c7e58bc0de244` |
| 20 | `theorem` | [tprod_one_sub_X_pow_ne_zero](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/tprod-one-sub-x-pow-ne-zero.md) | 244 | `result-track:048585f2aedd83b5779bed319b05e01a21a210ec4f71ce16867d8d19fc1dcd6b` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 264 | `declaration-track:f8e20454fc0aab469350cd466b1ce68b339fdfdf1f5a3a76e76a13a1597021a0` |
| 22 | `theorem` | [uniformContinuous_coeff](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/uniformcontinuous-coeff.md) | 268 | `result-track:15b2b59653b0b76ce6ff7b65bf4eeb3417520b6ad02f8259e6a1a7b1a657c3ba` |
| 23 | `theorem` | [instCompleteSpace](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/instcompletespace.md) | 274 | `result-track:54a012751751afe2d173f398ec59d6d05bb2ab06fe84e230c0e26bc86039a5b4` |
| 24 | `theorem` | [instIsUniformAddGroup](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/instisuniformaddgroup.md) | 280 | `result-track:86d9eb96b4b7f2eacc225da6350b4d7b89ed2c8fd0c5d93e15770f81ff80c7fb` |
| 25 | `theorem` | [continuous_C](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/continuous-c.md) | 298 | `result-track:747b341db761d56f08a937c96d872aac114edea1206daed65ac77620294b24e2` |
| 26 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff_isNilpotent](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/istopologicallynilpotent-of-constantcoeff-isnilpotent.md) | 301 | `result-track:bd1789b2098918a5579c6724ab33deb90e6cf31fc8e1cbbc38894f967edb4208` |
| 27 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff_zero](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/istopologicallynilpotent-of-constantcoeff-zero.md) | 306 | `result-track:3a108e8e6952e6b7e6fb94d9d1cd65f8bde33b4564215a1cea70f8e8ba29b957` |
| 28 | `theorem` | [isTopologicallyNilpotent_iff_constantCoeff_isNilpotent](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/istopologicallynilpotent-iff-constantcoeff-isnilpotent.md) | 314 | `result-track:a29abcfa53ca6eee4174f0d76c2f04c79d91c3b6404f7f39775f451695e902b5` |
| 29 | `theorem` | [hasSum_of_monomials_self](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/hassum-of-monomials-self.md) | 334 | `result-track:69288549dc58ade3d152c13395540ad015387f1a1865145b240a5a6645c275c7` |
| 30 | `theorem` | [as_tsum](../../../../CommutativeAlgebra/PiTopologyNamespacedPublic.lean/declarations/as-tsum.md) | 343 | `result-track:a38ba7cdff81bb071d99680b8fb20da4edce05e1e66b215c1c5495fb75e7589a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca6c2a60acf0d33f3d2e2a19a5053bf25867e9f736a691c3f149944b3a7708bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

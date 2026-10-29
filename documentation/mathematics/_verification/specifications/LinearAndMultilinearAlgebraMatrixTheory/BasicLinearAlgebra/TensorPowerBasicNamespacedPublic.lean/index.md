# Verification target: Tensor Power Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b7f77b1ab37d9a60115f4716697a338f9098275",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant4e8a4989bcc7bdae106eacedb348ab78546067345985f702977b33b92fee4639.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b7f77b1ab37d9a60115f4716697a338f9098275`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant4e8a4989bcc7bdae106eacedb348ab78546067345985f702977b33b92fee4639.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant4e8a4989bcc7bdae106eacedb348ab78546067345985f702977b33b92fee4639.lean.json)

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
| 1 | `abbrev` | [TensorPower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/tensorpower.md) | 46 | `declaration-track:e523dfebbb13730d17eecda44d6ed2d52acdaad5df58e2c51c06543322dacde1` |
| 2 | `theorem` | [gradedMonoid_eq_of_reindex_cast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/gradedmonoid-eq-of-reindex-cast.md) | 60 | `result-track:7235e1420187a0c183b061b77601766614db26a7dce1807aef9cf2bda6ae066b` |
| 3 | `instance` | [gOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/gone.md) | 76 | `declaration-track:4fb44dda2f2db042b8dce7362c64ed5092da50384dc2924e2767f4c8c97d24ad` |
| 4 | `theorem` | [gOne_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/gone-def.md) | 80 | `result-track:b9258a1675f4a073c8056dcf058f0e11d355199aaa3bb84a91bcc15ad232aeea` |
| 5 | `def` | [mulEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/mulequiv.md) | 84 | `declaration-track:bdf75bec4b010a46bf8e188b2148b0cea429f4ee6b9b68ed9eeb8f0b96696303` |
| 6 | `instance` | [gMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/gmul.md) | 88 | `declaration-track:f49c5092e7e1effa81b1e28625ae6c67b5ac294f091711b19f563d1d98369743` |
| 7 | `theorem` | [gMul_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/gmul-def.md) | 94 | `result-track:8fe1f6087cb1e8fe4dc12fb6b40f323be72397d44c28aa7abd7c4567b18b0586` |
| 8 | `theorem` | [gMul_eq_coe_linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/gmul-eq-coe-linearmap.md) | 98 | `result-track:2452a300c92f127b7c555d68ef72c701bb45780dbc993d4e4ba2705f73349826` |
| 9 | `def` | [cast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/cast.md) | 106 | `declaration-track:8f4dbf6c1df8db83db3a71c076f177bda4dd7dec11da7cebbca261d1bbb0e10d` |
| 10 | `theorem` | [cast_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/cast-tprod.md) | 108 | `result-track:1a8bcf59affe4e65eda301b53ab7c898e51f2dfe2161b70fab2e13e0aab67401` |
| 11 | `theorem` | [cast_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/cast-refl.md) | 113 | `result-track:4060c871d1c59ba919f022bb700d85fd03afd68cb1adda4e2004d21714e9f874` |
| 12 | `theorem` | [cast_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/cast-symm.md) | 117 | `result-track:fc46b6f312f371b6a827c07753580803d8e675d05bfc4d61f9ea7964fa693688` |
| 13 | `theorem` | [cast_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/cast-trans.md) | 121 | `result-track:5ed84891be2d0a010d4aed74e8a3da26a7e1e44f105dc1d6404f6960178b2f7b` |
| 14 | `theorem` | [cast_cast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/cast-cast.md) | 128 | `result-track:8ea872e037c6553b222949fcaa4b191cfdf55eefccdf33861b8806cae9f3ab4b` |
| 15 | `theorem` | [gradedMonoid_eq_of_cast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/gradedmonoid-eq-of-cast.md) | 133 | `result-track:d4418dad4b62bd4400f438a3b3abed5cdc5a3bdc5db775a9182adff8daf9e26f` |
| 16 | `theorem` | [cast_eq_cast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/cast-eq-cast.md) | 139 | `result-track:e67f91e4129a5111a3c455fa24bf38f2b9d82ea2937a1c23340d7d7b551729ca` |
| 17 | `theorem` | [tprod_mul_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/tprod-mul-tprod.md) | 146 | `result-track:5dae30e6d48bdc4d9174e34991c146c8cddab712ddc69ec12b37d28a055f6057` |
| 18 | `theorem` | [one_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/one-mul.md) | 156 | `result-track:e6113a1209a36965b5f7c2ad6d3358e92f50f3993fcf951d7e9b502de1217927` |
| 19 | `theorem` | [mul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/mul-one.md) | 168 | `result-track:c09a6a3decf0a96eb9983f18904b9e094a89d121dd4d7ff8f2cbad6a3b5b1076` |
| 20 | `theorem` | [mul_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/mul-assoc.md) | 178 | `result-track:2f1a3996411e683360a54aefb16280b1893fd93d6483812f406ab3206ee14812` |
| 21 | `instance` | [gmonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/gmonoid.md) | 202 | `declaration-track:b23e14ac8a9fe0f80cc183ebc1cc7e2460e9baf648e4bbaf6850aff88dd899f7` |
| 22 | `def` | [algebraMap₀](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/algebramap.md) | 210 | `declaration-track:21a942ddbf58265db1c5ecac67cfc4171af3610fdbbe5277197ea3a83101f87f` |
| 23 | `theorem` | [algebraMap₀_eq_smul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/algebramap-eq-smul-one.md) | 213 | `result-track:f18730d248f9d38604f502bbb9dc283dfdf718f4a7577735aacc0ed3e34e5718` |
| 24 | `theorem` | [algebraMap₀_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/algebramap-one.md) | 216 | `result-track:3857174c8468706d44ce7254e8ce14152afc2e5d2116afd32520f210cf4f1164` |
| 25 | `theorem` | [algebraMap₀_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/algebramap-mul.md) | 219 | `result-track:98e96119927f28361bc7f3021b96a9498a55e51a2bd16588aae114acf86bdd6e` |
| 26 | `theorem` | [mul_algebraMap₀](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/mul-algebramap.md) | 224 | `result-track:7bb7515d34930887623111912c6e54a4d26ae8a3414f35f897eba36274bcc135` |
| 27 | `theorem` | [algebraMap₀_mul_algebraMap₀](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/algebramap-mul-algebramap.md) | 229 | `result-track:b8e02dff11ca85bfadd2c93a6dadc7b2453e60f909e7f33c024f7684ad6a2879` |
| 28 | `instance` | [gsemiring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/gsemiring.md) | 234 | `declaration-track:611955125adf24182bfd34ff4e1ac7c777f5fb0d067ec4b1491d92f23862acf6` |
| 29 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/example.md) | 244 | `declaration-track:01c0379750f878511dca48eae2efe4df92ba25cb0416faf5c333936efeae8662` |
| 30 | `instance` | [galgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/galgebra.md) | 250 | `declaration-track:6eb631da42cd3436118f74d10ab4fd621c5775338584ed10f95543168353dbed` |
| 31 | `theorem` | [galgebra_toFun_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/galgebra-tofun-def.md) | 266 | `result-track:56024d2d3b76743ac433c6e69942626164b883956a83919f13eccac104d8526b` |
| 32 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TensorPowerBasicNamespacedPublic.lean/declarations/example-source-edition-2.md) | 270 | `declaration-track:049c53d6142b44264bb137155bc2b4723dabb4e8d2ebff5a3a7b6941ed189163` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ffff51f7aa84422b79ace338c1cb6a9bb9f01c7d9427cc4d1473e5ba65e4f1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant4e8a4989bcc7bdae106eacedb348ab78546067345985f702977b33b92fee4639.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant4e8a4989bcc7bdae106eacedb348ab78546067345985f702977b33b92fee4639.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

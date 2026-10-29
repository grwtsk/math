# Verification target: GRWTSK.Geometry.AlgebraicGeometry.FunctionField.Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6ebb148ae7cd4bc824b35bfc00b26d72ee87e8c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/index.md) · [Full source](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6ebb148ae7cd4bc824b35bfc00b26d72ee87e8c`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Properties` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Scheme.functionField](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/scheme-functionfield--98934ab631a5c3460fdd9c88.md) | 42 | `declaration-track:98934ab631a5c3460fdd9c88992051a700395a21c55a4db7412e8df0929750f2` |
| 2 | `abbrev` | [Scheme.germToFunctionField](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/scheme-germtofunctionfield--19088d594f2c50cb77cdfdf7.md) | 47 | `declaration-track:19088d594f2c50cb77cdfdf72f4e4ad7b41438caed7f9470ffb52a2f9b1f163d` |
| 3 | `instance` | [(anonymous)](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/instance--47475ee02d07f5a459b17f77.md) | 54 | `declaration-track:47475ee02d07f5a459b17f770fff8441d81ec9e13063a756f9a2db18bb5e13d1` |
| 4 | `instance` | [(anonymous)](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/instance--ccb910e44f931f548eed649c.md) | 58 | `declaration-track:ccb910e44f931f548eed649c640c4445155ea735f8f6ff1d371c9848d2fac300` |
| 5 | `theorem` | [germ_injective_of_isIntegral](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/germ-injective-of-isintegral--c2660792b6aa829591178b55.md) | 73 | `result-track:c2660792b6aa829591178b557ac47bc641a11b5549b85f545dedfe711fc32af6` |
| 6 | `theorem` | [Scheme.germToFunctionField_injective](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/scheme-germtofunctionfield-injective--7b63dc66e127bf88b6ec951a.md) | 84 | `result-track:7b63dc66e127bf88b6ec951ad30d344220c3858ffa005ec84523789abf16cd9d` |
| 7 | `theorem` | [genericPoint_eq_of_isOpenImmersion](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/genericpoint-eq-of-isopenimmersion--0f9cad219d1caf9951b4e81b.md) | 89 | `result-track:0f9cad219d1caf9951b4e81b96ef37f940d2e0445d5d91f77f6d24f5edf1aca9` |
| 8 | `instance` | [stalkFunctionFieldAlgebra](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/stalkfunctionfieldalgebra--3f2b35a330623143416ae8dc.md) | 104 | `declaration-track:3f2b35a330623143416ae8dc13ab2a97f3cdf4b6230e3e8ffac6d48d0eaad829` |
| 9 | `instance` | [functionField_isScalarTower](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/functionfield-isscalartower--176453d500de4b764a42fbc6.md) | 110 | `declaration-track:176453d500de4b764a42fbc66ac30352a4a2329ad89d792b9637fc062b728fe7` |
| 10 | `instance` | [(anonymous)](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/instance--7702ad885365267dba75493e.md) | 118 | `declaration-track:7702ad885365267dba75493ecda60ace276da09e537bbf3d9ff64fe2b2a615b3` |
| 11 | `theorem` | [genericPoint_eq_bot_of_affine](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/genericpoint-eq-bot-of-affine--4055c314774241c12a784f66.md) | 123 | `result-track:4055c314774241c12a784f66921caa0c3fed2c7694f60c00d7d226a0b7707521` |
| 12 | `instance` | [functionField_isFractionRing_of_affine](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/functionfield-isfractionring-of-affine--5e768745340164cb59515ad1.md) | 132 | `declaration-track:5e768745340164cb59515ad1e13c86063525f80b283e865e98739445f6fa15e6` |
| 13 | `instance` | [(anonymous)](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/instance--ddad2a7c7a979801ddfc010e.md) | 144 | `declaration-track:ddad2a7c7a979801ddfc010ebbe7707245f4ffc2cf0dfe4df5fe1c806f8d7c4b` |
| 14 | `theorem` | [IsAffineOpen.primeIdealOf_genericPoint](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/isaffineopen-primeidealof-genericpoint--e2918aabe3af345396b5c583.md) | 149 | `result-track:e2918aabe3af345396b5c583f38360b1b55607b42ea228bdd4058e7137bc30fe` |
| 15 | `theorem` | [functionField_isFractionRing_of_isAffineOpen](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/functionfield-isfractionring-of-isaffineopen--f47ac4cd6e2ab28c491eaac0.md) | 169 | `result-track:f47ac4cd6e2ab28c491eaac00d98b84cb18af2f63020436b622cfd6c6fc81da0` |
| 16 | `instance` | [(anonymous)](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/instance--2e3fcbb08d89dddfdd2ba3ca.md) | 183 | `declaration-track:2e3fcbb08d89dddfdd2ba3cafac7c38bd2a70074ac3ed0e86e7a365e3e63e787` |
| 17 | `instance` | [(anonymous)](../../../../../../Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean/declarations/instance--452cb118c17d04fd7ad04bb1.md) | 186 | `declaration-track:452cb118c17d04fd7ad04bb16dd57bf094f7dd5c525f8a1dcd9f2b1f41e869c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81c0c1d94434f78efc3b085eebe131b94b7c0491a5fec3bfe7504d940608a9b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/FunctionField/Variant5e79ee43823bd2a2af71ee2c84b308459cdebf54cd45bffee43b3846cb6011e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

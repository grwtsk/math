# Verification target: Algebra Rat Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40fd2389f63830435f60b644c4d21f6c93e4f41f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variantdf922b597131a5751fb63498550614aaf5215b17c6f9a92b5dac56f0a807aa0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40fd2389f63830435f60b644c4d21f6c93e4f41f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variantdf922b597131a5751fb63498550614aaf5215b17c6f9a92b5dac56f0a807aa0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variantdf922b597131a5751fb63498550614aaf5215b17c6f9a92b5dac56f0a807aa0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.End` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.CharZero` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_rat_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/declarations/map-rat-algebramap.md) | 32 | `result-track:315381652dfbc8cd0b961e023e859869147f3b220577eed40e0ed13183bf036c` |
| 2 | `lemma` | [cast_smul_eq_nnqsmul](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/declarations/cast-smul-eq-nnqsmul.md) | 46 | `result-track:4fc709436f96539886cf878f36167fa7d7aa23623357d550de68b749cefd449d` |
| 3 | `instance` | [Algebra Rat Namespaced](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/declarations/tonnratalgebra.md) | 58 | `declaration-track:bef144634ec6d1d2c847d7323bb3a9678ce19d8ed1a2d0698a00f80bdcf4ab54` |
| 4 | `instance` | [Algebra Rat Namespaced](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/declarations/tolinearmapclassnnrat.md) | 63 | `declaration-track:5f7bc15a336fb83b6ffa125c8e5c3618fe75d6f91b819a96bd0e26d30843e9e9` |
| 5 | `instance` | [instSMulCommClass](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/declarations/instsmulcommclass-source-edition-3.md) | 69 | `declaration-track:60c564faacd1fb301581a2a79cf62bb8183ebe14b6ecad30c4fec19c0afb8fc0` |
| 6 | `instance` | [instSMulCommClass'](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/declarations/instsmulcommclass-source-edition-2.md) | 72 | `declaration-track:5615104d75e8333720af65a23ce2cf2b3985ee44b118b378a61a51f079f03591` |
| 7 | `lemma` | [cast_smul_eq_qsmul](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/declarations/cast-smul-eq-qsmul.md) | 86 | `result-track:d31d5b3515e9d6b03ef4d7fb07c3d989d5c2395ff70ef0e0e982f357e23a2bf5` |
| 8 | `instance` | [Algebra Rat Namespaced](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/declarations/toratalgebra.md) | 98 | `declaration-track:8de8b217bdcfbfaf260805de059fd5183e88cf8dddc6f2e2622dc8c3f3e680a2` |
| 9 | `instance` | [Algebra Rat Namespaced](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/declarations/tolinearmapclassrat.md) | 103 | `declaration-track:7b7e18981b099ddfb585f373a8231fd5bd0acc210e42319f26ee21db0bddd6f4` |
| 10 | `instance` | [instSMulCommClass](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/declarations/instsmulcommclass.md) | 109 | `declaration-track:4541a1b7f75df47aedbbc7cf8991405c182fc81d2c08b8c013170adedbcf40d3` |
| 11 | `instance` | [instSMulCommClass'](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/declarations/instsmulcommclass-source-edition-4.md) | 112 | `declaration-track:cb9debc4b2e887203b375119b8d734c594ab5096f2c49a083852bc0ffc134898` |
| 12 | `instance` | [algebra_rat_subsingleton](../../../../AssociativeRingsAndAlgebras/AlgebraRatNamespaced.lean/declarations/algebra-rat-subsingleton.md) | 117 | `declaration-track:e966a625826e2e6bf019432db2ed256b9184ff362def0fe18795ad1e426f48ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7ab4050de087e0801aabf022108c3784fa2a9e6944b66fb9b0dd90dbed0cdf4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Rat/Variantdf922b597131a5751fb63498550614aaf5215b17c6f9a92b5dac56f0a807aa0d.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Rat/Variantdf922b597131a5751fb63498550614aaf5215b17c6f9a92b5dac56f0a807aa0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

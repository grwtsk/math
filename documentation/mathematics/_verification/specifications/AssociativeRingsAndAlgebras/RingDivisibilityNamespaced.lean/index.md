# Verification target: Ring Divisibility Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d95917c9a3e9408e61820fb1589945071443309",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variant3cd5fddf9c5fed60eb4b002e339b8b7a96e0886ccc0b0ea114dba2802511aa17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d95917c9a3e9408e61820fb1589945071443309`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variant3cd5fddf9c5fed60eb4b002e339b8b7a96e0886ccc0b0ea114dba2802511aa17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Divisibility/Variant3cd5fddf9c5fed60eb4b002e339b8b7a96e0886ccc0b0ea114dba2802511aa17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_add](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-add.md) | 31 | `result-track:5adaa1c85e97736ed61c3bb0be368f7c5747fa6fb9df5c9a9c920e0576a34301` |
| 2 | `theorem` | [two_dvd_bit0](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/two-dvd-bit0.md) | 42 | `result-track:d997534008260476c3c75300e739d575849ed114c1caec455fcc43769209b82a` |
| 3 | `theorem` | [Dvd.dvd.linear_comb](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-dvd-linear-comb.md) | 50 | `result-track:ab3c5365d0df5a77b3a381ae9cc615929808a40f00bfdc2f47bc7b972b4d3f9e` |
| 4 | `theorem` | [dvd_neg](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-neg.md) | 63 | `result-track:27581850cf172f768adc394b55ed0495d2a233f03eea2cfc86ac812830732d5c` |
| 5 | `theorem` | [neg_dvd](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/neg-dvd.md) | 71 | `result-track:c269bd0829c8979ab1456c749b510105c44521f5e82e89bab5acb3bf28e5d30b` |
| 6 | `theorem` | [dvd_sub](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-sub.md) | 90 | `result-track:55c60cff1658a0e3d3c6e0dd582d43d46a7c818cb0f5dadb28b78b7beb44984f` |
| 7 | `theorem` | [dvd_add_left](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-add-left.md) | 99 | `result-track:1b3fa51a6073e0e02faa6f1b77c7af50e1f1a8f094e5e290ff50daa62e5475bd` |
| 8 | `theorem` | [dvd_add_right](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-add-right.md) | 105 | `result-track:36e3ccd4cb86f219a58324a41658880f6ef609b18281b3e6214697b3f1b358af` |
| 9 | `theorem` | [dvd_sub_left](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-sub-left.md) | 110 | `result-track:9d4d5a7fcca254747e0048411442e1e75ffedd57aeaad06c8d750a677fa97975` |
| 10 | `theorem` | [dvd_sub_right](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-sub-right.md) | 117 | `result-track:22327d38eb74b2bf45964adb11ebe7a44efbeab6dde132c685b1bf21827a3d2f` |
| 11 | `theorem` | [dvd_iff_dvd_of_dvd_sub](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-iff-dvd-of-dvd-sub.md) | 122 | `result-track:627659b7b7366e46a23e4354081be99115c54a7ae1bca226e3e5c0cefa7f964d` |
| 12 | `theorem` | [dvd_sub_comm](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-sub-comm.md) | 127 | `result-track:679cd5b0b0e56fd906d9bcca2708911c4105816e3add8f8e56951cd826b31423` |
| 13 | `theorem` | [two_dvd_bit1](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/two-dvd-bit1.md) | 137 | `result-track:5e15116f099a90c88d66280424af106b4095bca4b87a2763da8712b7fafe91a8` |
| 14 | `theorem` | [dvd_add_self_left](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-add-self-left.md) | 143 | `result-track:52a91fc9c160b0cba4de5c228e3eeeddd363a7345d50340e0593ed85c03593cf` |
| 15 | `theorem` | [dvd_add_self_right](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-add-self-right.md) | 149 | `result-track:bce25504cfeb3d3426006f48bf2601d8387d6cad5483295a7c0ef15755c3e9dd` |
| 16 | `theorem` | [dvd_sub_self_left](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-sub-self-left.md) | 155 | `result-track:1545abea57d9b31f977a1133fa2c266822e0114c3e7fad421a14d807c0f4d3ec` |
| 17 | `theorem` | [dvd_sub_self_right](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-sub-self-right.md) | 161 | `result-track:87900a6ada59093583a99735cc56a32df390bda3fb902222873bbdfa8c75486d` |
| 18 | `theorem` | [dvd_mul_sub_mul](../../../../AssociativeRingsAndAlgebras/RingDivisibilityNamespaced.lean/declarations/dvd-mul-sub-mul.md) | 171 | `result-track:3716eac3684a3b2f2638d615aa1a83eef782b1c19b197d031550f3da3a649bbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ab1f9a3795710ec2c0f0c3142b23259e1c309e595e654411f8672f95375528d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variant3cd5fddf9c5fed60eb4b002e339b8b7a96e0886ccc0b0ea114dba2802511aa17.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Divisibility/Variant3cd5fddf9c5fed60eb4b002e339b8b7a96e0886ccc0b0ea114dba2802511aa17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

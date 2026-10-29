# Verification target: Euclidean Domain Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a317fafe4573b4261261446d3f75f0b693f89e87",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EuclideanDomain/Variantbcbf850b7342a35dbcf648874185673ab1e119b74ba0c48e378a9cc53bb4e0da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/EuclideanDomainNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/EuclideanDomainNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a317fafe4573b4261261446d3f75f0b693f89e87`.

Source path: `GRWTSK/Algebra/EuclideanDomain/Variantbcbf850b7342a35dbcf648874185673ab1e119b74ba0c48e378a9cc53bb4e0da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EuclideanDomain/Variantbcbf850b7342a35dbcf648874185673ab1e119b74ba0c48e378a9cc53bb4e0da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [left_div_gcd_ne_zero](../../../../CommutativeAlgebra/EuclideanDomainNamespaced.lean/declarations/left-div-gcd-ne-zero.md) | 40 | `result-track:6a3e7ea045f9bc1819c9071c0e512a374774cfb955d3e6780653cb8059ee47f6` |
| 2 | `theorem` | [right_div_gcd_ne_zero](../../../../CommutativeAlgebra/EuclideanDomainNamespaced.lean/declarations/right-div-gcd-ne-zero.md) | 47 | `result-track:e4614b062924655a50c9c1b5127529e4308f179aeee00f2789d60ae5dbd4903b` |
| 3 | `theorem` | [isCoprime_div_gcd_div_gcd](../../../../CommutativeAlgebra/EuclideanDomainNamespaced.lean/declarations/iscoprime-div-gcd-div-gcd.md) | 54 | `result-track:75aae51abaa2a817d95c7f6eae0e5544894e3c219007e989ce2acd252887f3b7` |
| 4 | `def` | [gcdMonoid](../../../../CommutativeAlgebra/EuclideanDomainNamespaced.lean/declarations/gcdmonoid.md) | 68 | `declaration-track:0f641d210ad7283605dbe4d50f1a61742ba7b38f95e3b1eeff0dcff44975201e` |
| 5 | `theorem` | [span_gcd](../../../../CommutativeAlgebra/EuclideanDomainNamespaced.lean/declarations/span-gcd.md) | 80 | `result-track:9712210092b489b0d1f6df8cf6a26900abd76289990f34def3872a58b303e951` |
| 6 | `theorem` | [gcd_isUnit_iff](../../../../CommutativeAlgebra/EuclideanDomainNamespaced.lean/declarations/gcd-isunit-iff.md) | 85 | `result-track:3b19291678dccfb7bf2f6167d9d75d2a4cae2dd65fe09eef08e831cf5792255c` |
| 7 | `theorem` | [isCoprime_of_dvd](../../../../CommutativeAlgebra/EuclideanDomainNamespaced.lean/declarations/iscoprime-of-dvd.md) | 90 | `result-track:749678d3c2eee6a45be03f03342f62b5337ee742943fd5dc52da40d2daeb3845` |
| 8 | `theorem` | [dvd_or_coprime](../../../../CommutativeAlgebra/EuclideanDomainNamespaced.lean/declarations/dvd-or-coprime.md) | 97 | `result-track:1efd7ded4468b5a0d506cbfeb0beedb130f9f8789217961125389a3f3337d8a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f438f8827856d01986063effbc77257136596afcf00617175d20e54c0332dcea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/EuclideanDomain/Variantbcbf850b7342a35dbcf648874185673ab1e119b74ba0c48e378a9cc53bb4e0da.lean","GRWTSK/_verification/specifications/Algebra/EuclideanDomain/Variantbcbf850b7342a35dbcf648874185673ab1e119b74ba0c48e378a9cc53bb4e0da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

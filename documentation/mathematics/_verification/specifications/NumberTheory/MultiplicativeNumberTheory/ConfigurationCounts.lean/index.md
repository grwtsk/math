# Verification target: GRWTSK.NumberTheory.Primes.ConfigurationCounts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f70cf5c6ffbe9766fdd62048c54af9d7f9845996",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/ConfigurationCounts.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f70cf5c6ffbe9766fdd62048c54af9d7f9845996`.

Source path: `GRWTSK/NumberTheory/Primes/ConfigurationCounts.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/ConfigurationCounts.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.Enumerative.BoundedWitnesses`](../../../../../Combinatorics/BoundedWitnesses.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Nat.Prime.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachCount](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/declarations/goldbachcount.md) | 23 | `declaration-track:719e81f5abc49083a89686fc51aaa64bf068a5c9c6fb906976896c310034a481` |
| 2 | `theorem` | [goldbachCount_pos_iff](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/declarations/goldbachcount-pos-iff.md) | 27 | `result-track:247cf62186b9a0f5f754bd0bbd89e479e6809697185bcd3c73ca6475126c6137` |
| 3 | `def` | [twinCount](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/declarations/twincount.md) | 42 | `declaration-track:305012ff182a0b10527ad61b2e357019a39f760e8e971692d9407e228b66ff7e` |
| 4 | `theorem` | [twinCount_pos_iff](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/declarations/twincount-pos-iff.md) | 46 | `result-track:baa17622c9add089be8576c0d20f78975ba91746e5818c06172a74439158fd98` |
| 5 | `def` | [twinTailCount](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/declarations/twintailcount.md) | 51 | `declaration-track:4993eab7fb9b823dc68b2ab18607d56b896c00d67c955aeaa991365aa1653243` |
| 6 | `def` | [intervalCount](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/declarations/intervalcount.md) | 55 | `declaration-track:bd9b98f9fc09e143b2263d34a96a1a4b597df6541b10e5689b789840a2eb46aa` |
| 7 | `theorem` | [intervalCount_pos_iff](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/declarations/intervalcount-pos-iff.md) | 59 | `result-track:2aa1004558a0f3d650f586e4c9f94168802165df053f581e815ddc961150bce0` |
| 8 | `def` | [squareCount](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/declarations/squarecount.md) | 69 | `declaration-track:818e9e0e859b24ee5181af792a2d73e252845ea4f6805e2b84210005bb9cc8ec` |
| 9 | `theorem` | [squareCount_pos_iff](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/declarations/squarecount-pos-iff.md) | 73 | `result-track:4fd2c06ba0164abbbee739496e19165f0ccebb4feb37eb94cae842dc7c34c835` |
| 10 | `def` | [quadraticCount](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/declarations/quadraticcount.md) | 79 | `declaration-track:0abf5d2d4fe710c83a86d54fef4358d30da4f9ee8a850883c19a264d4dce6ff7` |
| 11 | `theorem` | [quadraticCount_pos_iff](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/declarations/quadraticcount-pos-iff.md) | 83 | `result-track:ffa328de85ec4735a62404291769362aed46a16e2f1ed9868c1e1174797a833e` |
| 12 | `def` | [quadraticTailCount](../../../../../NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean/declarations/quadratictailcount.md) | 88 | `declaration-track:23bc703b55e31bda5357208dfd0b03619daae96a23486e921ba5247e569d353a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d11e44049a80ef721b2ffb059107424b99bdef41934781f5c9ead133ec172ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/ConfigurationCounts.lean","GRWTSK/_verification/specifications/NumberTheory/Primes/ConfigurationCounts.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

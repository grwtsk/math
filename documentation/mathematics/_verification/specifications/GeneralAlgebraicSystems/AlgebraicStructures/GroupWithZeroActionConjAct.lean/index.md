# Verification target: Group With Zero Action Conj Act

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ab00f148f92f705ae4cd3facc4bbf50cf10dcf9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ConjAct/Variante03b626a3789a92f3892b299d5f17db4a333958a29a38021dd7ff2fa1fb8b7b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionConjAct.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionConjAct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ab00f148f92f705ae4cd3facc4bbf50cf10dcf9`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ConjAct/Variante03b626a3789a92f3892b299d5f17db4a333958a29a38021dd7ff2fa1fb8b7b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ConjAct/Variante03b626a3789a92f3892b299d5f17db4a333958a29a38021dd7ff2fa1fb8b7b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionConjAct.lean/declarations/instance.md) | 20 | `declaration-track:6992adcfbf43c9fe28a8144cf0ef7d2e0afd7af0184585e87b1ef240d6079907` |
| 2 | `lemma` | [ofConjAct_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionConjAct.lean/declarations/ofconjact-zero.md) | 22 | `result-track:83e3ffe52b596adef3b5d4d0ebb5ef27638ba5e94fd35e64517dd6c767b4ae12` |
| 3 | `lemma` | [toConjAct_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionConjAct.lean/declarations/toconjact-zero.md) | 23 | `result-track:6deea09d141da1dcdff1cddd737b4d5c0f6e54e1687b2400ad9dea198ee1aecc` |
| 4 | `instance` | [mulAction₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionConjAct.lean/declarations/mulaction.md) | 25 | `declaration-track:bb054b8f5587c7004acc566f981db8c837d5202f3ccc9f01234865276768bf3e` |
| 5 | `instance` | [smulCommClass₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionConjAct.lean/declarations/smulcommclass-source-edition-2.md) | 29 | `declaration-track:b1d0575c7403eed0b6bbd7358b8e0cc7033bf3937d6d55af79d0bcc3e51f1f6a` |
| 6 | `instance` | [smulCommClass₀'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionConjAct.lean/declarations/smulcommclass.md) | 33 | `declaration-track:070dc31428dea619e1ae0a441ca39cf05ac686031f25657038b4045e3810974b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bf297aaa9a824443c39ca3789fee9abb3d6312a55185a6b176fb80f8c7a4558 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/ConjAct/Variante03b626a3789a92f3892b299d5f17db4a333958a29a38021dd7ff2fa1fb8b7b7.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/ConjAct/Variante03b626a3789a92f3892b299d5f17db4a333958a29a38021dd7ff2fa1fb8b7b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

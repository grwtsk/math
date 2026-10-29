# Verification target: GRWTSK.Algebra.Invariant.Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45d0b1e884e942a152051379f8626fb2f77770d7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean/index.md) · [Full source](../../../../../Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45d0b1e884e942a152051379f8626fb2f77770d7`.

Source path: `GRWTSK/Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.GroupAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subring.Pointwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsInvariantSubring](../../../../../Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean/declarations/isinvariantsubring--73dbd721df48940afb1c51a8.md) | 25 | `declaration-track:73dbd721df48940afb1c51a8e0fc729c0cbc3867f3be394b414dbcd8ba45d19f` |
| 2 | `instance` | [IsInvariantSubring.toMulSemiringAction](../../../../../Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean/declarations/isinvariantsubring-tomulsemiringaction--6d212c1b4edd73d8a50711bf.md) | 29 | `declaration-track:6d212c1b4edd73d8a50711bf14f0bab8c2937e00fc0ab67df96368f49b81a8fb` |
| 3 | `def` | [IsInvariantSubring.subtypeHom](../../../../../Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean/declarations/isinvariantsubring-subtypehom--2055f20fb0d6e3ef272f310c.md) | 51 | `declaration-track:2055f20fb0d6e3ef272f310c124a47a6ce3aa5732cac3366b1ed7a927aa39768` |
| 4 | `theorem` | [IsInvariantSubring.coe_subtypeHom](../../../../../Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean/declarations/isinvariantsubring-coe-subtypehom--781fdfaea4e21d0c1ebeda2b.md) | 57 | `result-track:781fdfaea4e21d0c1ebeda2b23cde93d7c6ad8e744a7b648fba8296be1a4ad6f` |
| 5 | `theorem` | [IsInvariantSubring.coe_subtypeHom'](../../../../../Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean/declarations/isinvariantsubring-coe-subtypehom--8cafd89ed338aebc7950669e.md) | 63 | `result-track:8cafd89ed338aebc7950669e05d5a0c051250332fa6b6ba6698e6799b4d9b08c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e590330f4cc59feec8ada8555436564a76bb609d24b72d5ce64ad291aecdb66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean","GRWTSK/_verification/specifications/Algebra/Invariant/Variant411982d76e6a8a52e1f68d5a2bd6a0b5229e929066c499fd4348b6b559d414e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

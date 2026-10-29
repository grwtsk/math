# Verification target: Group With Zero Action Prod Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ff2376a1ac31f743a37a59828c4a4de7ba5118b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variant787b0190db6222a998a84f2344e22d44644260ff07eb4bd649065357d8e34d5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionProdNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionProdNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ff2376a1ac31f743a37a59828c4a4de7ba5118b`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variant787b0190db6222a998a84f2344e22d44644260ff07eb4bd649065357d8e34d5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variant787b0190db6222a998a84f2344e22d44644260ff07eb4bd649065357d8e34d5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.End` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_zero_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionProdNamespaced.lean/declarations/smul-zero-mk.md) | 39 | `result-track:6415a25ae5b410d6615070dfb6e38c0bc51f2ba4e04fdcbfe42bd770e37b4a39` |
| 2 | `theorem` | [smul_mk_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionProdNamespaced.lean/declarations/smul-mk-zero.md) | 42 | `result-track:63662cf3070fa0147944c381aa110a656087c41b4c8f44d418f65f8370383011` |
| 3 | `instance` | [smulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionProdNamespaced.lean/declarations/smulzeroclass.md) | 47 | `declaration-track:caea85acac2292e0ac796bde2fa6c1c95588fa9f4eb49e814c4b080de6b82e8e` |
| 4 | `instance` | [distribSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionProdNamespaced.lean/declarations/distribsmul.md) | 50 | `declaration-track:426470ca06022afc30cda5ee0902a9ba9cb399c6d9a37cb87ccf4d7c16305a7c` |
| 5 | `instance` | [distribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionProdNamespaced.lean/declarations/distribmulaction.md) | 54 | `declaration-track:05029b308ac37a87b64ebfad95dcf91c0a8eedc830168e68b7be15f8ad5b6524` |
| 6 | `instance` | [mulDistribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionProdNamespaced.lean/declarations/muldistribmulaction.md) | 58 | `declaration-track:54487e9e842f10f1df507153ca9dc641bc6cf41ddb5cf5b95c996ac5b0c80a41` |
| 7 | `abbrev` | [DistribMulAction.prodOfSMulCommClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionProdNamespaced.lean/declarations/distribmulaction-prodofsmulcommclass.md) | 72 | `declaration-track:b01fa70817c37762c10406fe89baf5561699d1387039a31e8849e48990db5ee7` |
| 8 | `def` | [DistribMulAction.prodEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroActionProdNamespaced.lean/declarations/distribmulaction-prodequiv.md) | 80 | `declaration-track:97333e0d4e1d1f53339c10db5cd8ea1701dca1ef92cc1e2a791420c52105b092` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cbe66f250ce2c8a600b2cadf7848ed16c9aaab846ffd85aa06436f482786c9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Prod/Variant787b0190db6222a998a84f2344e22d44644260ff07eb4bd649065357d8e34d5b.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Prod/Variant787b0190db6222a998a84f2344e22d44644260ff07eb4bd649065357d8e34d5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

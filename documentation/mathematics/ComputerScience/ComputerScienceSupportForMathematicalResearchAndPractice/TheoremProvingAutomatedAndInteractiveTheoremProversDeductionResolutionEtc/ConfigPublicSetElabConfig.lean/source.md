# Config Public Set Elab Config — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d73e0ac74662e6fcd7e190910ef180e13654b1a` · SHA-256 `a4dd042df192f1575044cb13f23999d55344f4dcf336ed0422495bfe74f21b86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic

public section

namespace Lean.Elab.Term

/--
  Set `isDefEq` configuration for the elaborator.
  Note that we enable all approximations but `quasiPatternApprox`

  In Lean3 and Lean 4, we used to use the quasi-pattern approximation during elaboration.
  The example:
  ```
  def ex : StateT δ (StateT σ Id) σ :=
  monadLift (get : StateT σ Id σ)
  ```
  demonstrates why it produces counterintuitive behavior.
  We have the `Monad-lift` application:
  ```
  @monadLift ?m ?n ?c ?α (get : StateT σ id σ) : ?n ?α
  ```
  It produces the following unification problem when we process the expected type:
  ```
  ?n ?α =?= StateT δ (StateT σ id) σ
  ==> (approximate using first-order unification)
  ?n := StateT δ (StateT σ id)
  ?α := σ
  ```
  Then, we need to solve:
  ```
  ?m ?α =?= StateT σ id σ
  ==> instantiate metavars
  ?m σ =?= StateT σ id σ
  ==> (approximate since it is a quasi-pattern unification constraint)
  ?m := fun σ => StateT σ id σ
  ```
  Note that the constraint is not a Milner pattern because σ is in
  the local context of `?m`. We are ignoring the other possible solutions:
  ```
  ?m := fun σ' => StateT σ id σ
  ?m := fun σ' => StateT σ' id σ
  ?m := fun σ' => StateT σ id σ'
  ```

  We need the quasi-pattern approximation for elaborating recursor-like expressions (e.g., dependent `match with` expressions).

  If we had use first-order unification, then we would have produced
  the right answer: `?m := StateT σ id`

  Haskell would work on this example since it always uses
  first-order unification.
-/
def setElabConfig (cfg : Meta.Config) : Meta.Config :=
  { cfg with foApprox := true, ctxApprox := true, constApprox := false, quasiPatternApprox := false }


end Lean.Elab.Term
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=440ccf80b7efc487d01dc37e639f9470bc8e84816ef2c26c3150e4708213d421 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta4dd042df192f1575044cb13f23999d55344f4dcf336ed0422495bfe74f21b86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

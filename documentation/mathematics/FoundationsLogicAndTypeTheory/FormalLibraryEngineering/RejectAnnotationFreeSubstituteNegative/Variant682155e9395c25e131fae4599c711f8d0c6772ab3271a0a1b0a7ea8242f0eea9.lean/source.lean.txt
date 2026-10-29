import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Logic.PortPureTypeSystem
-- The deliberately weaker substitute omits lambda/product annotation reduction.
inductive AnnotationFreeBeta : Expr Unit → Expr Unit → Prop
  | head (A b a) : AnnotationFreeBeta (.app (.lam A b) a) (b.instantiate a)
  | app_left {f f' a} : AnnotationFreeBeta f f' → AnnotationFreeBeta (.app f a) (.app f' a)
  | app_right {f a a'} : AnnotationFreeBeta a a' → AnnotationFreeBeta (.app f a) (.app f a')
  | lam_body {A b b'} : AnnotationFreeBeta b b' → AnnotationFreeBeta (.lam A b) (.lam A b')
  | pi_body {A B B'} : AnnotationFreeBeta B B' → AnnotationFreeBeta (.pi A B) (.pi A B')
def annotationRedex : Expr Unit := .app (.lam (.sort ()) (.var 0)) (.sort ())
def lambdaWithRedex : Expr Unit := .lam annotationRedex (.var 0)
def lambdaReduced : Expr Unit := .lam (.sort ()) (.var 0)
def productWithRedex : Expr Unit := .pi annotationRedex (.var 0)
def productReduced : Expr Unit := .pi (.sort ()) (.var 0)
-- Hostile mutation: the weaker relation is offered as the full annotated Beta relation.
example : AnnotationFreeBeta lambdaWithRedex lambdaReduced :=
  Beta.lam_domain (Beta.head (.sort ()) (.var 0) (.sort ()))

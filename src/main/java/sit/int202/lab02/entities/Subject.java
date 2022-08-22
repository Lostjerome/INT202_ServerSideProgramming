package sit.int202.lab02.entities;
import lombok.*;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class Subject {
    private String id;
    private String title;
    private double credit;
}

package daomian;

/**
 * Created by Dw.L on 2017/6/2.
 */
public class admin {
        /**
         *
         *管理员JAVABEN
         +---------+-------------+------+-----+---------+-------+
         | Field   | Type        | Null | Key | Default | Extra |
         +---------+-------------+------+-----+---------+-------+
         | aid     | int(11)     | NO   | PRI | NULL    |       |
         | aname   | varchar(50) | YES  |     | NULL    |       |
         | agender | varchar(10) | YES  |     | NULL    |       |
         | apassword | varchar(30) | YES  |     | NULL    |       |
         +---------+-------------+------+-----+---------+-------+
         *
         */

        int aid;
        String aname;
        String agender;
        String apassword;

        public admin(int aid, String aname, String agender, String apassword) {
            this.aid = aid;
            this.aname = aname;
            this.agender = agender;
            this.apassword = apassword;
        }

        public admin(){

        }

        public int getAid() {
            return aid;
        }

        public void setAid(int aid) {
            this.aid = aid;
        }

        public String getAname() {
            return aname;
        }

        public void setAname(String aname) {
            this.aname = aname;
        }

        public String getAgender() {
            return agender;
        }

        public void setAgender(String agender) {
            this.agender = agender;
        }

        public String getApassword() {
            return apassword;
        }

        public void setApassword(String apassword) {
            this.apassword = apassword;
        }

}
